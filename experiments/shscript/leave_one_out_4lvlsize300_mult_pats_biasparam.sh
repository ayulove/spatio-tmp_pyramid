#!/bin/sh

cd /u/tomas/thesis
echo $2
matlab -nodesktop -r "setup; load allpyramidslvl4size300perm132; leave_one_out_sw_mult_pats('/u/tomas/thesis/results/leave_one_out_b$2/leave_one_out_4lvlsize300_mult_pats/', allpyramids{$2}{1}, $1); exit;"
