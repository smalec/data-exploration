clear
clc


% a)
values = rand(1, 10000) * 2 - 1;
hist(values, 100)
values = rand(1, 100000) * 2 - 1;
hist(values, 100)

% b)
% values = normrnd(5, 3, 1, 10000);
% histfit(values, 100);
% values = normrnd(5, 3, 1, 100000);
% histfit(values, 100);

% c)
% x = normrnd(2, 5, 1, 10000);
% y = normrnd(3, 1, 1, 10000);
% scatter(x, y);
% x = normrnd(2, 5, 1, 100000);
% y = normrnd(3, 1, 1, 100000);
% scatter(x, y);