function [] = try_gigapool_checkpools3v(trial_num)
load gigapool3

% a bit of dirty hacking.. run experiment expects an extra level of nesting because of 
% bias type
allgigapools{1} = gigapool;
allgigapoolss{1} = allgigapools;
[accuracies, all_confns, fs] = run_experiment_checkpools(allgigapoolss, 1, 'poly', trial_num+1);
save(['/u/tomas/thesis/results/gigapool3v/acc_confn_fstrial', num2str(trial_num+1)], 'accuracies', 'all_confns', 'fs');
