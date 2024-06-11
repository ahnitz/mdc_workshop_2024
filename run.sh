export PYCBC_DETECTOR_CONFIG=$PWD/custom_detectors.ini
export OMP_NUM_THREADS=1

pycbc_inference \
--config-file reltime.ini \
--nprocesses 2 \
--output-file reltime.hdf \
--seed 0 \
--force \
--verbose


# This reconstructs any marginalized parameters
# and would be optional if you don't need them or
# have sampled over all parameters directly (see reltime.ini)
pycbc_inference_model_stats \
--input-file reltime.hdf \
--output-file reltime_demarg.hdf \
--nprocesses 2 \
--reconstruct-parameters \
--force \
--verbose

pycbc_inference_plot_posterior \
--input-file reltime_demarg.hdf \
--output-file reltime.png \
--parameters distance inclination polarization coa_phase tc ra dec mchirp eta \
--plot-injection-parameters \
--z-arg snr
