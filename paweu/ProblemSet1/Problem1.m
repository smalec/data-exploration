% a)
values = rand(1, 10000) * 2 - 1;
groups = [-1.00: 0.02: 1.00];
count = histc(values, groups);
plot(groups, count);

% b)
values = randn(1, 10000);
groups = [-5.00: 0.1: 5.00];
count = histc(values, groups);
plot(groups, count);

values = normrnd(5, 3, 1, 100000);
histfit(values, 100);

% c)
x = normrnd(2, 5, 1, 10000);
y = normrnd(3, 1, 1, 10000);
plot(x, y);
