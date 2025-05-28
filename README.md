source container.sh
source job_setup.sh
From there, you need a .sh that runs a job “e.g. run_reco2_full.sh” and this needs a “.jobscript” to set the build and environment up “e.g.  submit_reco2_full_lowe_hd_localcode.jobscript” and that is mostly it. Running “run_reco2_full.sh” will output a 5 digit number which corresponds to the job you can look up on the JustIN web-browser.
A few additions to this is:
It’s good practice to run a test job which runs locally before submitting to the grid -> see “test_run_reco2_full.sh”.  Only two modification from usual run script here:
justin command is “justin-test-jobscript” rather than “justin simple-workflow”
Doesn’t have an extra variable --output-pattern
There are three main kinds of “.jobscript”
simplest: running with fcls and code in the dunesw/dunereco
middle: running with custom fcls but existing code -> need to upload a tar ball with fcl using “INPUT_TAR_DIR_LOCAL=`justin-cvmfs-upload my_tarball.tar`
most complex: running custom fcls and code -> upload a tar ball with fcls and your larsoft build. I’ve added a “setup” file which is modifed to work with setting up a build in a tarball rather than with hard paths (you’ll notice the MRB_SOURCE variable etc. start with “${INPUT_TAR_DIR_LOCAL}/…” rather than hard paths.
To run over a certain set of files, you need a mql query, you can find these when looking up files with metacat: https://dune-tech.rice.edu/dunecatalog/. This mql query goes in the “run.sh”
That’s mostly it! Just double check the .fcls and .jobscripts to make sure everything is pointing to the correct place and make that the set name in the “--output-pattern” variable matches the output you get in the local ‘test’ run.
Your jobs can be found on this web-browser and there is more JustIn documentation here: https://justin.dune.hep.ac.uk/dashboard/
And you can find the JustIN tutorial slides here: https://docs.dunescience.org/cgi-bin/private/ShowDocument?docid=30145
