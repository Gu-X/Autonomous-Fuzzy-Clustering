clear all
clc
close all

load exampledata
% % 

NumberofChunks=2;
GranularityLevel=4;
seq=randperm(length(data(:,1)));
chunksize=ceil(length(data(:,1))/NumberofChunks);

[Centre,IDX]=AFC(data,GranularityLevel,chunksize);


