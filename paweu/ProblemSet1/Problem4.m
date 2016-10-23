clear
clc

d = 100;

N = 1000;
M = 1000;
X = rand(d, N);
Y = rand(d, N);

D11 = calc_dist(X, Y);
D21 = calc_dist2(X, Y);
isequal(D11, D21)

N = 10000;
D2 = calc_dist(rand(d, N), rand(d, M));


function D = calc_dist( X, Y )
    [~, N] = size(X);
    [~, M] = size(Y);
    D = zeros(N, M);
    
    for i = 1 : M
        D(:, i) = sqrt(sum((X - Y(:, i)) .^ 2));
    end
end

% no for loop, but uses too much space
function D = calc_dist2( X, Y )
    [~, N] = size(X);
    [d, M] = size(Y);
    
    Y_w_rep_cols = reshape(repmat(Y, N, 1), d, N * M);
    X_rep = repmat(X, 1, M);
    D = reshape(sqrt(sum((X_rep - Y_w_rep_cols) .^ 2)), N, M);
end
