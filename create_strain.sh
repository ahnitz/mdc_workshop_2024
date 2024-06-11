export PYCBC_DETECTOR_CONFIG=$PWD/custom_detectors.ini

pycbc_condition_strain \
--gps-start-time 1799998000 \
--gps-end-time   1800001000 \
--pad-data 8 \
--fake-strain-from-file ce_strain/cosmic_explorer_strain.txt \
--fake-strain-seed 0 \
--fake-strain-flow 5.1 \
--fake-strain-sample-rate 2048 \
--sample-rate 2048 \
--injection-file injection.hdf \
--channel-name CE40:STRAIN \
--output-strain-file CE40-{start}-{duration}.gwf \
--frame-duration 512



