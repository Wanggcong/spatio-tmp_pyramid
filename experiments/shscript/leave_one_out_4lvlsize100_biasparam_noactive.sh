#!/bin/sh

cd /u/tomas/thesis
echo $2
matlab -nodesktop -r "setup; load allpyramidslvl4size100; leave_one_out_sw_noactive('/u/tomas/thesis/results/leave_one_out_b$2/leave_one_out_4lvlsize100_noactive/', allpyramids{$2}{1}, $1); exit;"
