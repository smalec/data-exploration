clear
clc

a = [1: 100];
b = [1: 2: 100];
c = [-1.00*pi: 0.01*pi: 1.00*pi];
d = [c(1:100) c(102:201)];
e = max(sin([1:100]), 0);
A = reshape([1: 100], 10, 10)';
B = diag([1:100]) + diag([99: -1: 1], -1) + diag([99: -1: 1], 1);
C = triu(ones(100));
D = [cumsum([1:100]); cumprod([1:100])];
E = mod([1:100] ./ [1:100]', 1) == 0;
