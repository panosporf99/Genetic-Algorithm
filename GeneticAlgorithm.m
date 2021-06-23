function [x,fval,exitflag,output,population,score] = GeneticAlgorithm(nvars)
%% This is an auto generated MATLAB file from Optimization Tool.

%% Start with the default options
options = optimoptions('ga');
%% Modify options setting
options = optimoptions(options,'PopulationType', 'bitstring');
options = optimoptions(options,'SelectionFcn', {  @selectiontournament [] });
options = optimoptions(options,'CrossoverFcn', @crossovertwopoint);
options = optimoptions(options,'MutationFcn', {  @mutationuniform [] });
options = optimoptions(options,'Display', 'off');
[x,fval,exitflag,output,population,score] = ...
ga(@fit,nvars,[],[],[],[],[],[],[],[],options);
