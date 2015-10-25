clear ; close all; clc;
input_layer_size  = 400;
num_labels = 10;

load('ex3data1.mat'); % training data stored in arrays X, y
m = size(X, 1);
lambda = 0.1;
[all_theta] = oneVsAll(X, y, num_labels, lambda);
