clc
clear

X = rand(2, 10);
Y = rand(2, 100);

H = closest(X, Y, 2)