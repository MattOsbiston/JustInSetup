source /cvmfs/dune.opensciencegrid.org/products/dune/setup_dune.sh
setup python v3_9_15
setup rucio
setup justin
justin get-token
export RUCIO_ACCOUNT=justinreadonly
export METACAT_AUTH_SERVER_URL=https://metacat.fnal.gov:8143/auth/dune
export METACAT_SERVER_URL=https://metacat.fnal.gov:9443/dune_meta_demo/app
setup metacat
setup jobsub_client
justin version
rucio whoami
htgettoken -a htvaultprod.fnal.gov -i dune
rm -f /var/tmp/justin.session.'id -u'
justin time

