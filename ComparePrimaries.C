// ROOT macro for comparing the vertex locations for different MaGe simulations
// Author: Toby Dixon (toby.dixon.23@ucl.ac.uk)
//g++ -std=c++11 -o ComparePrimaries ComparePrimaries.C $(root-config --cflags --libs)

#include "TH1D.h"
#include "TGraph.h"
#include "TH2D.h"
#include "TTree.h"
#include "TCanvas.h"
#include "TStyle.h"
#include "TChain.h"
#include <iostream>
#include <vector>
#include <cstring>
#include <unistd.h> 
#include "TLegend.h"
#include "TLatex.h"
#include "TCut.h"
#include "TMath.h"
#include "TLine.h"
#include "json.hpp"
#include <fstream>


using json = nlohmann::json;

std::string get_last_part(std::string inputString)
{

    size_t lastSlashPos = inputString.find_last_of('/');

    if (lastSlashPos != std::string::npos) 
    {     
        size_t secondLastSlashPos = inputString.find_last_of('/', lastSlashPos - 1);
        std::string lastPart = inputString.substr(secondLastSlashPos + 1, lastSlashPos - secondLastSlashPos - 1);        
        return lastPart;
    } 
    else 
    {
        return inputString;
        
    }

    return inputString;

}

int plot_primaries(std::vector<std::string>paths,std::string var_x,std::string var_y,int N,std::string save_name,
    bool label_strings=false,int string_sel=-1,
    bool label_positions=false,
    double min_x=-400,double max_x=400,double min_y=-400,double max_y=-400,
    std::vector<double> xpoints={},std::vector<double> ypoints={},double zsel_low=-1,double zsel_high=-1,
    std::string hpath="",std::vector<std::string>labels={}
)
{   

    /// get string positions
    std::ifstream file("string_positions.json");
    if (!file.is_open()) 
    {
        std::cerr << "Failed to open file." << std::endl;
        return 1;
    }

    json jsonData;
    try 
    {
        file >> jsonData;
    } 
    catch (json::parse_error& e) 
    {
        std::cerr << "Parse error: " << e.what() << std::endl;
        return 1;
    }

    double sis_to_mage=8405.1;

    // get det positions

    std::ifstream file_det("det_positions.json");
    if (!file_det.is_open()) 
    {
        std::cerr << "Failed to open file." << std::endl;
        return 1;
    }

    json jsonData_det;
    try 
    {
        file_det>> jsonData_det;
    } 
    catch (json::parse_error& e) 
    {
        std::cerr << "Parse error: " << e.what() << std::endl;
        return 1;
    }

     json jsonData_hard;
    // get hardware positions
    std::cout<<"hpath = "<<hpath<<std::endl;
    if (hpath!="")
    {
        std::ifstream file_hard(hpath);
        if (!file_hard.is_open()) 
        {
            std::cerr << "Failed to open file." << std::endl;
            return 1;
        }

     
        try 
        {
            file_hard>> jsonData_hard;
        } 
        catch (json::parse_error& e) 
        {
            std::cerr << "Parse error: " << e.what() << std::endl;
            return 1;
        }
    }
    
    std::vector<TGraph*> outputs;
    TLegend *l = new TLegend(0.7,0.7,0.9,0.9);
    
    std::vector<int>colors={kBlack,kCyan+1,kRed,kMagenta,kBlue,kGreen+1,kOrange-3,kCyan+2,kGray,kOrange+5,kMagenta+3};

    int counter=0;
   

    for (std::string path: paths)
     {
        TCut is_string;
        if (string_sel!=-1)
        {
            bool is_2v=((path.find("2vbb") != std::string::npos) | ((path.find("pen") != std::string::npos)));
            double string_x=jsonData[std::to_string(string_sel).c_str()]["x"];
            double string_y=jsonData[std::to_string(string_sel).c_str()]["y"];

            if (string_sel!=-1 &&is_2v)
                is_string=Form("TMath::Sqrt(TMath::Power(%f-%s,2)+TMath::Power(%f-%s,2))<50",string_x,"eventPrimaries.fSteps.fX",string_y,"eventPrimaries.fSteps.fY");
        }
        if (zsel_low!=-1 && zsel_high!=-1)
        {
            is_string = Form("%s>%f && %s<%f","eventPrimaries.fSteps.fZ",zsel_low,"eventPrimaries.fSteps.fZ",zsel_high);
        }
        TChain *c = new TChain("fTree","fTree");
        c->Add((path+"/*").c_str());
        c->SetEntryList(0);
        int eN=c->GetEntries();

        int Nt=N;
        if (eN<N)
        {
            Nt=eN-1;
        }

        c->Draw((var_x+":"+var_y).c_str(), is_string, "goff", Nt, 0);

        int numEntries = c->GetSelectedRows();
        std::cout << "Number of entries processed: " << numEntries << std::endl;
        std::vector<double>vec1;
        std::vector<double>vec2;
        vec1.reserve(numEntries);
        vec2.reserve(numEntries);

        // Read data from chain directly into vectors
        for (int i = 0; i < numEntries; ++i) 
        {
            vec1.push_back(c->GetV1()[i]);
            vec2.push_back(c->GetV2()[i]);
           
        }
        TGraph* graph = new TGraph(vec1.size() ,vec1.data(), vec2.data());
        graph->SetLineColor(colors[counter]);
        graph->SetMarkerColor(colors[counter]);

        l->AddEntry(graph,labels[counter].c_str(),"LP");
        outputs.push_back(graph);
        
        delete c;
        counter++;
     }

    TCanvas * can = new TCanvas();
    counter=0;
    

    for (auto graph: outputs)
     {  
        if (counter==0)
        {
            graph->Draw("AP");
            graph->GetYaxis()->SetTitle(var_y.c_str());
            graph->GetXaxis()->SetTitle(var_x.c_str());
            graph->SetTitle("Primary event vertexs");
            graph->SetMinimum(min_y);
            graph->SetMaximum(max_y);
            graph->GetXaxis()->SetLimits(min_x,max_x);

        }
        else
        {
            graph->Draw("P");

        }
        counter++;
     }

    // label the points
    if (xpoints.size()>0)
    {   
        TGraph *g = new TGraph(xpoints.size());
        for (size_t i = 0; i < xpoints.size(); ++i) 
        {
            g->SetPoint(i,xpoints[i],ypoints[i]);
        }
        g->SetMarkerColor(3);
        g->SetMarkerStyle(8);
        l->AddEntry(g,"Point of MaGe warning","P");
        g->Draw("Psame");

    } 
    
    if (label_strings==true)
    {   
        std::cout<<hpath<<std::endl;
        if (hpath=="")
        {
            for (auto it = jsonData.begin(); it != jsonData.end(); ++it)
            {

                TLatex * latex = new TLatex();
                latex->SetNDC(false); // Set to use real coordinates

                
                latex->SetTextFont(42); // Choose font (42 is the standard LaTeX font)
                latex->SetTextSize(0.06); // Set text sizex
                double x=it.value()["x"];
                double y=it.value()["y"];
                TGraph * gtmp = new TGraph(1);
                gtmp->SetPoint(0,x,y);
                gtmp->SetMarkerColor(kRed);
                gtmp->SetMarkerStyle(8);
                double factor=1.3;
                if (y<0) factor=1.45;
                latex->DrawLatex(factor*x, factor*y,it.key().c_str()); 
                gtmp->Draw("Psame");
            }
        }
        else
        {
            std::vector<int> strings = jsonData_hard["strings"]["names"];
            std::vector<double> rad = jsonData_hard["strings"]["radius"];
            std::vector<double> theta = jsonData_hard["strings"]["theta"];

            for (int s=0; s<strings.size();s++)
            {      
                TLatex * latex = new TLatex();
                latex->SetNDC(false); // Set to use real coordinates

                
                latex->SetTextFont(42); // Choose font (42 is the standard LaTeX font)
                latex->SetTextSize(0.06); // Set text sizex
                int string =strings[s];
                double rad_tmp = rad[s];
                double theta_tmp = theta[s];
                double x = rad_tmp*TMath::Cos(-TMath::DegToRad()*theta_tmp);
                double y = rad_tmp*TMath::Sin(-TMath::DegToRad()*theta_tmp);
                TGraph * gtmp = new TGraph(1);
            
                gtmp->SetPoint(0,x,y);
                gtmp->SetMarkerColor(kRed);
                gtmp->SetMarkerStyle(5);
                double factor=1.3;
                if (y<0) factor=1.45;
                latex->DrawLatex(factor*x, factor*y,Form("%i ",string)); 
                if (s==0)l->AddEntry(gtmp,"String positions","P");
                gtmp->Draw("Psame");
            }

            std::vector<int> siss = jsonData_hard["sis"]["names"];
            std::vector<double> rad_sis = jsonData_hard["sis"]["radius"];
            std::vector<double> theta_sis = jsonData_hard["sis"]["theta"];
            for (int s=0; s<siss.size();s++)
            {
                
                TLatex * latex = new TLatex();
                latex->SetNDC(false); // Set to use real coordinates

                
                latex->SetTextFont(42); // Choose font (42 is the standard LaTeX font)
                latex->SetTextSize(0.06); // Set text sizex
                int sis =siss[s];
                double rad_tmp = rad_sis[s];
                double theta_tmp = theta_sis[s];
                double x = rad_tmp*TMath::Cos(-TMath::DegToRad()*theta_tmp);
                double y = rad_tmp*TMath::Sin(-TMath::DegToRad()*theta_tmp);
                TGraph * gtmp = new TGraph(1);
            
                gtmp->SetPoint(0,x,y);
                gtmp->SetMarkerColor(kBlack);
                gtmp->SetMarkerStyle(5);
                double factor=0.7;
                if (y<0) factor=0.5;
                //latex->DrawLatex(factor*x, factor*y,Form("sis-%i ",sis)); 
                if (s==0)l->AddEntry(gtmp,"SIS positions","P");

                gtmp->Draw("Psame");
            }

        }
    }
    if (label_positions==true)
    {   
        if (string_sel==-1)
            throw std::runtime_error("Cannot label geds positions unless you select one string");
        
        std::vector<double>positions =jsonData_det[std::to_string(string_sel)].get<std::vector<double>>();
        
        for (size_t i = 0; i < positions.size(); ++i) 
        {
            int row = i+1;
            double z_sis = positions[i];
            double z_mage = sis_to_mage-z_sis;

            TLine *line = new TLine(min_x, z_mage, max_x, z_mage);
       
            line->Draw();

            // Add text label above the line
            TLatex label;
            label.SetTextSize(0.02);
            label.SetTextAlign(11);
            label.DrawLatex(min_x+0.1*(max_x-min_x), z_mage ,Form("%i",row));
        }   
    }
    l->Draw();
   
    can->Draw();
    can->SaveAs(save_name.c_str());
}

void Usage(std::string arg)
{
    std::cout<<"The usage of this function is:"<<std::endl;
    std::cerr << arg << " [-p path1,path2,...] [-x arg] [-y arg] " << std::endl;
    std::cout<< " with the options:"<<std::endl;
    std::cout<<"-p: list of paths to the folders with the MC raw files"<<std::endl;
    std::cout<<"-a: list of labels for each MC file"<<std::endl;
    std::cout<<"-X: comma seperated list of range for x-axis"<<std::endl;
    std::cout<<"-Y: comma seperated list of range for Y-axis"<<std::endl;
    std::cout<<"-z: range of z to select "<<std::endl;
    std::cout<<"-f: path to a file containing extra points to plot"<<std::endl;
    std::cout<<"-l: bool to label the string  / SIS x-y positions"<<std::endl;
    std::cout<<"-L: bool to label the bottom of each HPGe detector"<<std::endl;
    std::cout<<"-x: variable name to plot on x-axis "<<std::endl;
    std::cout<<"-y: variable name to plot on y-axis "<<std::endl;
    std::cout<<"-s: int of a string to select to plot primaries from"<<std::endl;
    std::cout<<"-o: output name "<<std::endl;

}   

int main(int argc, char* argv[]) 
{
    std::vector<std::string> paths =
    {
    "../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-hpge-bulk-2vbb/",
    "../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-calibration-tubes-Ra224-to-Pb208/",
    "../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1a-minus-176mm-Ra224-to-Pb208/",
    "../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3a-minus-176mm-Ra224-to-Pb208/",
    };
    std::vector<std::string> labels
    {
        "HPGe","CalTubes","SIS1","SIS3"
    };
    std::string x_var,y_var;
    std::string out="test.pdf";
    x_var="eventPrimaries.fSteps.fX";
    y_var="eventPrimaries.fSteps.fY";
    std::string hardware_position_path="";
    std::vector<double>xrange={-400,400};
    std::vector<double>yrange={-400,400};
    std::vector<double> xpoints={};
    std::vector<double> ypoints={};
    std::vector<double> zsel={-1,-1};
    int string_sel=-1;
    int N=100000;
    bool label_strings=true;
    bool label_positions=false;
    // Process command line arguments using getopt
    int opt;
    while ((opt = getopt(argc, argv, "p:a:x:X:z:y:Y:o:s:l:L:f:m:h")) != -1) {
        switch (opt) {
            case 'p':
                // Handling multiple paths separated by comma
                {
                    paths={};
                    char* pathToken = std::strtok(optarg, ",");
                    while (pathToken != nullptr) {
                        paths.push_back(pathToken);
                        pathToken = std::strtok(nullptr, ",");
                    }
                }
                break;
               case 'a':
                // Handling multiple paths separated by comma
                {
                    labels={};
                    char* pathToken = std::strtok(optarg, ",");
                    while (pathToken != nullptr) {
                        labels.push_back(pathToken);
                        pathToken = std::strtok(nullptr, ",");
                    }
                }
                break;
            case 'f':
                {
                std::ifstream inputFile(optarg);
                
                if (!inputFile) 
                {
                    std::cerr << "Error opening file: " << optarg << std::endl;
                    return 1;
                }
                double x,y;
                while (inputFile >> x >> y) 
                {
        
                    xpoints.push_back(x);
                    ypoints.push_back(y);

                 }
    
                inputFile.close();
                }
                break;
    
            case 'x':
                x_var = optarg;
                break;
            case 'X':
                  {
                    xrange={};
                    char* pathToken = std::strtok(optarg, ",");
                    while (pathToken != nullptr) 
                    {
                        xrange.push_back(std::stod(pathToken));
                        pathToken = std::strtok(nullptr, ",");
                    }
                }
                break;
            case 'm':
                hardware_position_path=optarg;
                break;
            case 'z':
                  {
                    zsel={};
                    char* pathToken = std::strtok(optarg, ",");
                    while (pathToken != nullptr) 
                    {
                        zsel.push_back(std::stod(pathToken));
                        pathToken = std::strtok(nullptr, ",");
                    }
                }
                break;
            case 'y':
                y_var = optarg;
                break;
            case 'Y':
                  {
                    yrange={};
                    char* pathToken = std::strtok(optarg, ",");
                    while (pathToken != nullptr) 
                    {
                        yrange.push_back(std::stod(pathToken));
                        pathToken = std::strtok(nullptr, ",");
                    }
                }
                break;
            case 'o':
                out = optarg;
                break;
            case 'l':
                label_strings = atoi(optarg);
                break;
            case 'L':
                label_positions = atoi(optarg);
                break;
            case 's':
                string_sel = atoi(optarg);
                break;
            case '?':
                if (optopt == 'p' || optopt == 'x' || optopt == 'y' | optopt =='l' | optopt=='s' | optopt=='L') 
                {
                    std::cerr << "Option -" << static_cast<char>(optopt) << " requires an argument." << std::endl;
                } 
                else 
                {
                    std::cerr << "Unknown option: -" << static_cast<char>(optopt) << std::endl;
                }
                return 1;
            case 'h':
                Usage(argv[0]);
                return 1;
            default:
                std::cerr << "Usage: " << argv[0] << " [-p path1,path2,...] [-x arg] [-y arg]" << std::endl;
                return 1;
        }
    }
    if (xrange.size() != 2 ||yrange.size()!=2) 
    {
        throw std::runtime_error("Vector length is not 2.");
    }
    // Output the parsed arguments
    std::cout<<"Running the script with options:"<<std::endl;
    std::cout<<"--------------------------------"<<std::endl;
    std::cout << "Paths:";
    for (const auto& path : paths) {
        std::cout << " " << path;
    }
    std::cout << std::endl;
    std::cout << "x_var: " << x_var<< std::endl;
    std::cout<<  "x_range: "<<xrange[0]<< " , "<<xrange[1]<<std::endl;
    std::cout<<  "y_range: "<<yrange[0]<< " , "<<yrange[1]<<std::endl;
    std::cout << "y_var: " << y_var << std::endl;
    std::cout <<"Labelling points:"<<std::endl;
    std::cout <<"hardware path :"<<hardware_position_path<<std::endl;
    for (size_t i = 0; i < xpoints.size(); ++i) 
    {
       std::cout << "Point " << i + 1 << ": var1 = " << xpoints[i] << ", var2 = " << ypoints[i] << std::endl;
    }
    

    std::cout<<" " <<std::endl;
    return plot_primaries(paths,x_var,y_var,
        N,out,label_strings,string_sel,label_positions,xrange[0],xrange[1],yrange[0],yrange[1],xpoints,ypoints,zsel[0],zsel[1],
        hardware_position_path,labels
    );
   
}
