#!/bin/bash


## z-y plane
./ComparePrimaries -p "../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-hpge-bulk-2vbb/, \
../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-calibration-tubes-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1-8500mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3-8500mm-Ra224-to-Pb208/" \
-y eventPrimaries.fSteps.fY -l 1 -o position_x_y.pdf  

## z for string 4

./ComparePrimaries -p "../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-hpge-bulk-2vbb/, \
../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-calibration-tubes-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1-8500mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3-8500mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1-8380mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3-8380mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1-8280mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3-8280mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1-8180mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3-8180mm-Ra224-to-Pb208/" \
-y eventPrimaries.fSteps.fZ -l 0 -o position_z_string_4.pdf -s 4 -Y -500,700 -X 100,300

./ComparePrimaries -p "../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-hpge-bulk-2vbb/, \
../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-calibration-tubes-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1-8500mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3-8500mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1-8380mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3-8380mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1-8280mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3-8280mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1-8180mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3-8180mm-Ra224-to-Pb208/" \
-y eventPrimaries.fSteps.fZ -l 0 -o position_z_string_4_lowest.pdf -s 4 -Y -150,-50 -X 100,300

./ComparePrimaries -p "../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-hpge-bulk-2vbb/, \
../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-calibration-tubes-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1-8500mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3-8500mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1-8380mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3-8380mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1-8280mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3-8280mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1-8180mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3-8180mm-Ra224-to-Pb208/" \
-y eventPrimaries.fSteps.fZ -l 0 -o position_z_string_4_middle.pdf -s 4 -Y -50,50 -X 100,300

./ComparePrimaries -p "../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-hpge-bulk-2vbb/, \
../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-calibration-tubes-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1-8500mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3-8500mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1-8380mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3-8380mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1-8280mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3-8280mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1-8180mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3-8180mm-Ra224-to-Pb208/" \
-y eventPrimaries.fSteps.fZ -l 0 -o position_z_string_4_mid_top.pdf -s 4 -Y 50,150 -X 100,300

./ComparePrimaries -p "../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-hpge-bulk-2vbb/, \
../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-calibration-tubes-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1-8500mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3-8500mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1-8380mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3-8380mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1-8280mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3-8280mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1-8180mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3-8180mm-Ra224-to-Pb208/" \
-y eventPrimaries.fSteps.fZ -l 0 -o position_z_string_4_top.pdf -s 4 -Y 150,250 -X 100,300
### z for string 10

./ComparePrimaries -p "../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-hpge-bulk-2vbb/, \
../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-calibration-tubes-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1-8500mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3-8500mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1-8380mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3-8380mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1-8280mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3-8280mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1-8180mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3-8180mm-Ra224-to-Pb208/" \
-y eventPrimaries.fSteps.fZ -l 0 -o position_z_string_10.pdf -s 10 -Y -500,700 -X -300,-100

./ComparePrimaries -p "../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-hpge-bulk-2vbb/, \
../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-calibration-tubes-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1-8500mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3-8500mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1-8380mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3-8380mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1-8280mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3-8280mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1-8180mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3-8180mm-Ra224-to-Pb208/" \
-y eventPrimaries.fSteps.fZ -l 0 -o position_z_string_10_lowest.pdf -s 10 -Y -150,-50 -X -300,-100

./ComparePrimaries -p "../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-hpge-bulk-2vbb/, \
../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-calibration-tubes-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1-8500mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3-8500mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1-8380mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3-8380mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1-8280mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3-8280mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1-8180mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3-8180mm-Ra224-to-Pb208/" \
-y eventPrimaries.fSteps.fZ -l 0 -o position_z_string_10_middle.pdf -s 10 -Y -50,50 -X -300,-100

./ComparePrimaries -p "../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-hpge-bulk-2vbb/, \
../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-calibration-tubes-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1-8500mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3-8500mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1-8380mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3-8380mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1-8280mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3-8280mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1-8180mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3-8180mm-Ra224-to-Pb208/" \
-y eventPrimaries.fSteps.fZ -l 0 -o position_z_string_10_mid_top.pdf -s 10 -Y 50,150 -X -300,-100

./ComparePrimaries -p "../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-hpge-bulk-2vbb/, \
../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-calibration-tubes-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1-8500mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3-8500mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1-8380mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3-8380mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1-8280mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3-8280mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-1-8180mm-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200a-cal-source-3-8180mm-Ra224-to-Pb208/" \
-y eventPrimaries.fSteps.fZ -l 0 -o position_z_string_10_top.pdf -s 10 -Y 150,250 -X -300,-100
