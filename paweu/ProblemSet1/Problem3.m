clear
clc

d = 100;

x = rand(d, 1);
y = rand(d, 1);
w = rand(d, 1);

length(x);
sum(x .* w) / sum(w);
sqrt(sum((x - y) .^ 2));
sum(x .* y);

N = 1000;
X = rand(d, N);

% ...
sum(X .* w) / sum(w);
sqrt(sum((X - y) .^ 2));
sum(X .* y);
