function D = dists(X, Y)
    [~, N] = size(X); % Nie mo¿na zrobiæ size(X)(2)?
    [~, M] = size(Y);
    D = zeros(N, M);
    for i = [1 : N]
        D(i, :) = sqrt(sum((X(:, i) - Y).^2));
    end
end