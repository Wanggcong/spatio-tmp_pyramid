function [] = try_megapool(trial_num)
load megapooleq

% a bit of dirty hacking.. run experiment expects an extra level of nesting because of 
% bias type
megapools{1} = megapool;
megapoolss{1} = megapools;
% we call this because we only care about which get selected
[accuracies, all_confns, fs] = run_experiment_vp(megapoolss, 1, 'poly', trial_num+1);
save(['/u/tomas/thesis/results/megapooleq/trial', num2str(trial_num+1)], 'accuracies', 'all_confns', 'fs');
