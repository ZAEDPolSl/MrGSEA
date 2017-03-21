clear all; close all; clc
addpath('GSEA_package')

% set options
opts = default_GSEA_opts();
opts.show = true;       %if plot results
opts.save = false;      %if save results
opts.perm_nb = 1000;    %number of permutations

load('data_GSE6344.mat')
[res_pos,res_neg,res_descr,p_gene] = MrGSEA(dataF,group,prob,'test',opts);