clear
clc

d = 100;

N = 1000;
M = 1000;
D1 = calc_dist(rand(d, N), rand(d, M));

N = 10000;
D2 = calc_dist(rand(d, N), rand(d, M));

function D = calc_dist( X, Y )
    [~, cols_x] = size(X);
    [~, cols_y] = size(Y);
    D = zeros(cols_x, cols_y);
    
    for i = 1 : cols_y
        D(:, i) = sqrt(sum((X - Y(:, i)) .^ 2));
    end
end
