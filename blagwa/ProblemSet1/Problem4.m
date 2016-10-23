clc
clear

X = rand(100, 10000);
Y = rand(100, 1000);

D = dists(X, Y);

function D = dists(X, Y)
    [~, N] = size(X); % Nie mo¿na zrobiæ size(X)(2)? 
    [~, M] = size(Y);
    D = zeros(N, M);
    for i = [1 : N]
        D(i, :) = sqrt(sum((X(:, i) - Y).^2));
    end
end