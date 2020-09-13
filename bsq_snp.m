%% BSQ File Read

clc;
clear all;
close all;

%% This is for loading full cube (following 'partly')
%X = multibandread(FILENAME, SIZE, PRECISION, OFFSET, INTERLEAVE, BYTEORDER)
% SIZE = [LINES, SAMPLES, BANDS]
% FOR INSTANCE
%X = multibandread('MM098_CHNP__140927_a052e_reflct_cube000_geo.bsq', [5439,3972,284], 'int16', 0, 'bsq', 'ieee-le');

%% Loading subimages 
%X = multibandread(FILENAME, SIZE, PRECISION, OFFSET, INTERLEAVE, BYTEORDER, SUBSET, SUBSET, SUBSET)
% FOR INSTANCE
% loading "row - lines"
X_row_lines = multibandread('MM098_CHNP__140927_a052e_reflct_cube000_geo.bsq',[5439,3972,284],'int16',0,'bsq','ieee-le', {'Row','Direct',[1:10]});
% loading "colum - samples"
X_col_samples = multibandread('MM098_CHNP__140927_a052e_reflct_cube000_geo.bsq',[5439,3972,284],'int16',0,'bsq','ieee-le', {'Column','Direct',[1,5,20]});
% loading "bands" only
X_bands = multibandread('MM098_CHNP__140927_a052e_reflct_cube000_geo.bsq',[5439,3972,284],'int16',0,'bsq','ieee-le', {'Band','Direct',[10,34,64]});
% loading "row - lines" and "colum - samples"
X_row_col = multibandread('MM098_CHNP__140927_a052e_reflct_cube000_geo.bsq',[5439,3972,284],'int16',0,'bsq','ieee-le', {'Row','Direct',[100:110]}, {'Column','Direct',[1,200,620]});
% loading "bands" only
X_row_col_bands = multibandread('MM098_CHNP__140927_a052e_reflct_cube000_geo.bsq',[5439,3972,284],'int16',0,'bsq','ieee-le', {'Row','Direct',[100:1100]}, {'Column','Direct',[150:152]}, {'Band','Direct',[1:12]});

%% Spatial Visualization
%Y = squeeze(X_bands(:,:,34))
%imagesc(X_bands)

%% Spectral visualization
%Z = squeeze(X_row_col_bands(152,256,:))
%plot(Z)
