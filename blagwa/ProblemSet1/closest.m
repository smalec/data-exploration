function H = closest(X, Y, k)
    D = dists(X, Y);
    [~, sorted] = sort(D, 2);
    H = sorted(:, 1:k);
end