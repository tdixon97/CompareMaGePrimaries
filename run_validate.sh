#!/bin/bash


./ComparePrimaries -p "../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-hpge-bulk-2vbb/, \
../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-calibration-tubes-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-1-source-0-8300-mm-offset-0-mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-2-source-0-8300-mm-offset-0-mm-Ra224-to-Pb208/, \
../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-3-source-0-8300-mm-offset-0-mm-Ra224-to-Pb208/" \
-y eventPrimaries.fSteps.fY -l 1 -o position_x_y.pdf -m positions_matt_busch.json -a 'HPGe,CalTubes,SIS1,SIS2,SIS3'

./ComparePrimaries -p "../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-hpge-bulk-2vbb/, \
../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-calibration-tubes-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-1-source-0-8300-mm-offset-0-mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-2-source-0-8300-mm-offset-0-mm-Ra224-to-Pb208/, \
../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-3-source-0-8300-mm-offset-0-mm-Ra224-to-Pb208/" \
-y eventPrimaries.fSteps.fY -l 1 -X 100,200 -Y -150,-50 -o position_x_y_SIS1.pdf -m positions_matt_busch.json -a 'HPGe,CalTubes,SIS1,SIS2,SIS3'


./ComparePrimaries -p "../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-hpge-bulk-2vbb/, \
../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-calibration-tubes-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-1-source-0-8300-mm-offset-0-mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-2-source-0-8300-mm-offset-0-mm-Ra224-to-Pb208/, \
../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-3-source-0-8300-mm-offset-0-mm-Ra224-to-Pb208/" \
-y eventPrimaries.fSteps.fY -l 1 -X -150,-50, -Y -150,-50 -o position_x_y_SIS2.pdf -m positions_matt_busch.json -a 'HPGe,CalTubes,SIS1,SIS2,SIS3'


./ComparePrimaries -p "../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-hpge-bulk-2vbb/, \
../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-calibration-tubes-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-1-source-0-8300-mm-offset-0-mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-2-source-0-8300-mm-offset-0-mm-Ra224-to-Pb208/, \
../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-3-source-0-8300-mm-offset-0-mm-Ra224-to-Pb208/" \
-y eventPrimaries.fSteps.fY -l 1 -X -150,-50 -Y 50,150 -o position_x_y_SIS3.pdf -m positions_matt_busch.json -a 'HPGe,CalTubes,SIS1,SIS2,SIS3'



./ComparePrimaries -p "../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-hpge-bulk-2vbb/, \
../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-calibration-tubes-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-3-source-0-8300-mm-offset-0-mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-3-source-1-8300-mm-offset-0-mm-Ra224-to-Pb208/, \
../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-3-source-2-8300-mm-offset-0-mm-Ra224-to-Pb208/, \
../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-3-source-3-8300-mm-offset-0-mm-Ra224-to-Pb208/" \
-y eventPrimaries.fSteps.fZ -l 0 -L 1 -o position_z_string_10.pdf -s 10 -Y -500,900 -X -300,-100  -a HPGe,CalTubes,a,b,c,d 

./ComparePrimaries -p "../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-hpge-bulk-2vbb/, \
../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-calibration-tubes-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-3-source-0-8300-mm-offset-0-mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-3-source-1-8300-mm-offset-0-mm-Ra224-to-Pb208/, \
../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-3-source-2-8300-mm-offset-0-mm-Ra224-to-Pb208/, \
../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-3-source-3-8300-mm-offset-0-mm-Ra224-to-Pb208/" \
-y eventPrimaries.fSteps.fZ -l 0 -L 1 -o position_z_string_10_lowest.pdf -s 10 -Y -150,-50 -X -300,-100  -a HPGe,CalTubes,a,b,c,d

./ComparePrimaries -p "../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-hpge-bulk-2vbb/, \
../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-calibration-tubes-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-3-source-0-8300-mm-offset-0-mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-3-source-1-8300-mm-offset-0-mm-Ra224-to-Pb208/, \
../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-3-source-2-8300-mm-offset-0-mm-Ra224-to-Pb208/, \
../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-3-source-3-8300-mm-offset-0-mm-Ra224-to-Pb208/" \
-y eventPrimaries.fSteps.fZ -l 0 -L 1 -o position_z_string_10_middle.pdf -s 10 -Y -50,50 -X -300,-100 -a HPGe,CalTubes,a,b,c,d

./ComparePrimaries -p "../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-hpge-bulk-2vbb/, \
../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-calibration-tubes-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-3-source-0-8300-mm-offset-0-mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-3-source-1-8300-mm-offset-0-mm-Ra224-to-Pb208/, \
../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-3-source-2-8300-mm-offset-0-mm-Ra224-to-Pb208/, \
../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-3-source-3-8300-mm-offset-0-mm-Ra224-to-Pb208/" \
-y eventPrimaries.fSteps.fZ -l 0 -L 1 -o position_z_string_10_mid_top.pdf -s 10 -Y 50,150 -X -300,-100 -a HPGe,CalTubes,a,b,c,d

./ComparePrimaries -p "../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-hpge-bulk-2vbb/, \
../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-calibration-tubes-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-3-source-0-8300-mm-offset-0-mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-3-source-1-8300-mm-offset-0-mm-Ra224-to-Pb208/, \
../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-3-source-2-8300-mm-offset-0-mm-Ra224-to-Pb208/, \
../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-3-source-3-8300-mm-offset-0-mm-Ra224-to-Pb208/" \
-y eventPrimaries.fSteps.fZ -l 0 -L 1 -o position_z_string_10_top.pdf -s 10 -Y 150,250 -X -300,-100 -a HPGe,CalTubes,a,b,c,d

