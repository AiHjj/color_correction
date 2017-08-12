clc;close all;

% [chart, patch_info] = generate_chart (1704, 2272, 100, 16, 240, 16, 240, 16, 240, 8, 16);

branch_for_learning_git = 3;

chart = load('chart.mat');
chart = chart.chart;

patch_info = load('patch_info.mat');
patch_info = patch_info.patch_info;

proc= imread('proc.JPG');     % captured by cellphone camera
proc=double(proc);

hight=size(proc,1);
width=size(proc,2);

[cal, a, fit] = color_xform (chart, 1, 1, 1704, 2272,...
                                          patch_info , ...
                                          proc, 1, 1, hight, width,...
                                          1, -1);
 
                                       
figure,imshow(uint8(chart)),title('the chart')                                    
figure,imshow(uint8(proc)),title('the original image')
figure,imshow(uint8(cal)),title('the CCM processed image')