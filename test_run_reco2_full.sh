INPUT_TAR_DIR_LOCAL=`justin-cvmfs-upload FDC_EB_VDNOM2.tar`
USERF=$USER
FNALURL='https://fndcadoor.fnal.gov:2880/dune/scratch/users'

justin-test-jobscript \
	--mql "files from fardet-vd:fardet-vd__hit-reconstructed__v09_91_04d00__standard_reco1_dunevd10kt_1x8x14_3view_30deg__prodmarley_nue_cc_flat_radiological_decay0_dunevd10kt_1x8x14_3view_30deg__out1__validation limit 1 ordered" \
	--jobscript /pnfs/dune/scratch/users/osbiston/justin/justin/thesis/submit_reco2_full_lowe_localcode.jobscript \
        --env INPUT_TAR_DIR_LOCAL="$INPUT_TAR_DIR_LOCAL" \
	--env NUM_EVENTS=5 \
       
