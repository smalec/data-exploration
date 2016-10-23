clc
clear

x = rand(100, 1);
y = rand(100, 1);
w = rand(100, 1);

sqrt(sum(x.^2));
sum(x .* w) / sum(w);
sqrt(sum((x - y).^2));
sum(x .* y);

X = rand(100, 1000);

sqrt(sum(X.^2));
sum(X .* w) / sum(w);
sqrt(sum(X - y).^2);
sum(X .* y);