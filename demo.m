clear all
clc
close all

load exampledata % load data
% % 

NumberofChunks=2;  
GranularityLevel=4;
seq=randperm(length(data(:,1)));
chunksize=ceil(length(data(:,1))/NumberofChunks);

[Centre,IDX]=AFC(data,GranularityLevel,chunksize);  %% AFC clusters data chunk-by-chunk

% Centre- cluster centres
% IDX   - the ID of the cluster each data sample belongs to after defuzzification


