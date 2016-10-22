clc
clear

uniformPoints = 2 * rand(1, 10000) - 1;

figure;
hold on;
histogram(uniformPoints, 100);
plot([-1,1], [100,100]);
close;

moreUniformPoints = 2 * rand(1, 100000) - 1;

figure;
hold on;
histogram(moreUniformPoints, 100);
plot([-1,1], [1000,1000]);
close;

noramlPoints = normrnd(5, 3, [1, 10000]);

figure;
hold on;
histfit(noramlPoints, 100);
close;

moreNoramlPoints = normrnd(5, 3, [1, 100000]);

figure;
hold on;
histfit(moreNoramlPoints, 100);
close;

cPoints = [normrnd(2, 5, [10000, 1]), normrnd(3, 1, [10000  , 1])];

figure;
hold on;
scatter(cPoints(:, 1), cPoints(:, 2));
close;

figure;
[values, centers] = hist3([cPoints(:, 1), cPoints(:, 2)], [50, 50]);
imagesc(centers{:}, values);
colorbar;
close;

moreCPoints = [normrnd(2, 5, [100000, 1]), normrnd(3, 1, [100000  , 1])];

figure;
hold on;
scatter(moreCPoints(:, 1), moreCPoints(:, 2));
close;

figure;
[values, centers] = hist3([moreCPoints(:, 1), moreCPoints(:, 2)], [50, 50]);
imagesc(centers{:}, values);
colorbar;