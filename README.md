# CompareMagePrimaries
### A script to overlay the primary vertexs generated by MaGe along with some markers / lines etc for geometry validation.
### Author: Toby Dixon (toby.dixon.23@ucl.ac.uk)

The script consists of a c++ / ROOT macro.Both ROOT and c++11 are needed to  run the script, they can be loaded on Perlmutter (NERSC) with:

`export PATH="/global/cfs/cdirs/legend/software/container-env/bin:$PATH" `

`cenv legend`


The script can be compiled with `g++` using:

`g++ -std=c++11 -o ComparePrimaries ComparePrimaries.C $(root-config --cflags --libs)`

Running the exectuable with -h option will give information on the various options:


    The usage of this function is:
    ./ComparePrimaries [-p path1,path2,...] [-x arg] [-y arg] 
     with the options:
    -p: list of paths to the folders with the MC raw files
    -a: list of labels for each MC file
    -X: comma seperated list of range for x-axis
    -Y: comma seperated list of range for Y-axis
    -z: range of z to select 
    -f: path to a file containing extra points to plot
    -l: bool to label the string  / SIS x-y positions
    -L: bool to label the bottom of each HPGe detector
    -x: variable name to plot on x-axis 
    -y: variable name to plot on y-axis 
    -s: int of a string to select to plot primaries from
    -o: output name 

Examples of how to run the code are given in the bash scripts. For example to plot x-y positons of HPGe, cal sources and cal tubes you can use:

    ./ComparePrimaries -p "../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-hpge-bulk-2vbb/, \                                                                      
    ../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-calibration-tubes-Ra224-to-Pb208/,\                                                                            
    ../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-1-source-0-8300-mm-offset-0-mm-Ra224-to-Pb208/,\                                          
    ../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-2-source-0-8300-mm-offset-0-mm-Ra224-to-Pb208/, \                                         
    ../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-3-source-0-8300-mm-offset-0-mm-Ra224-to-Pb208/" \
    -y eventPrimaries.fSteps.fY -l 1 -o position_x_y.pdf -m positions_matt_busch.json -a 'HPGe,CalTubes,SIS1,SIS2,SIS3'

Or to plot x-z positions for just string 10 (labelling also the expected bottom of each HPGe detector).

    ./ComparePrimaries -p "../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-hpge-bulk-2vbb/, \                                                                      
    ../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-calibration-tubes-Ra224-to-Pb208/,\                                                                            
    ../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-3-source-0-8300-mm-offset-0-mm-Ra224-to-Pb208/,\                                          
    ../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-3-source-1-8300-mm-offset-0-mm-Ra224-to-Pb208/, \                                         
    ../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-3-source-2-8300-mm-offset-0-mm-Ra224-to-Pb208/, \                                         
    ../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-3-source-3-8300-mm-offset-0-mm-Ra224-to-Pb208/" \
    -y eventPrimaries.fSteps.fZ -l 0 -L 1 -o position_z_string_10.pdf -s 10 -Y -500,900 -X -300,-100  -a HPGe,CalTubes,a,b,c,d



