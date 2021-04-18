clear all
clc
close all
%% AFC clusters data chunk-by-chunk to increase its computational efficiency.

load exampledata % load data

NumberofChunks=2; % number of data chunks
GranularityLevel=4; % level of granularity

chunksize=ceil(length(data(:,1))/NumberofChunks); % calculate the chunk size based on the number of data samples and the number of chunks.

[Centre,IDX]=AFC(data,GranularityLevel,chunksize);  %% AFC clusters data chunk-by-chunk

% Centre- cluster centres
% IDX   - the ID of the cluster each data sample belongs to after defuzzification


