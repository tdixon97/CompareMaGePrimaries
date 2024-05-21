./ComparePrimaries -p "../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-hpge-bulk-2vbb/, \
../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-calibration-tubes-Ra224-to-Pb208/,\
../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-pen-plates-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-1-source-0-8300-mm-offset-0-mm-Ra224-to-Pb208/" \
-y eventPrimaries.fSteps.fY -l 1 -o position_x_y_sel.pdf -f error_xy.txt -z 110,125 -Y -50,50 -X 150,250


./ComparePrimaries -p "../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-hpge-bulk-2vbb/, \
../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-calibration-tubes-Ra224-to-Pb208/,\
../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-pen-plates-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-1-source-0-8300-mm-offset-0-mm-Ra224-to-Pb208/" \
-y eventPrimaries.fSteps.fZ -l 0 -o position_x_z_very_zoom.pdf -f error_xz.txt -Y 110,125 -X 150,250 -s 3

./ComparePrimaries -p "../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-hpge-bulk-2vbb/, \
../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-calibration-tubes-Ra224-to-Pb208/,\
../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-pen-plates-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-1-source-0-8300-mm-offset-0-mm-Ra224-to-Pb208/" \
-y eventPrimaries.fSteps.fY -l 1 -o position_x_y.pdf -f error_xy.txt


./ComparePrimaries -p "../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-hpge-bulk-2vbb/, \
../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-calibration-tubes-Ra224-to-Pb208/,\
../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-pen-plates-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-1-source-0-8300-mm-offset-0-mm-Ra224-to-Pb208/" \
-y eventPrimaries.fSteps.fY -l 1 -o position_x_y_zoom.pdf -f error_xy.txt -Y -50,50 -X 150,250

./ComparePrimaries -p "../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-hpge-bulk-2vbb/, \
../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-calibration-tubes-Ra224-to-Pb208/,\
../../../sims/prodenv/l200a/v1.0.0/generated/tier/raw/l200a-pen-plates-Ra224-to-Pb208/,\
../legend-prodenv/calibration_simulations/generated/tier/raw/l200-cal-source-sis-1-source-0-8300-mm-offset-0-mm-Ra224-to-Pb208/" \
-y eventPrimaries.fSteps.fZ -l 0 -o position_x_z_zoom.pdf -f error_xz.txt -Y 50,150 -X 150,250 -s 3

