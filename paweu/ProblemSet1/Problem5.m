clear
clc

d = 100;
N = 1000;
M = 1000;
X = rand(d, N);
Y = rand(d, M);

h = closest(X, Y);
H1 = closest_k(X, Y, 1);
H30 = closest_k(X, Y, 30);

isequal(h, H1)

function h = closest( X, Y )
    [~, N] = size(X);
    h = zeros(1, N);
    
    for i = 1: N
        [~, h(i)] = min(sqrt(sum((Y - X(:, i)) .^ 2)));
    end

end

function H = closest_k( X, Y, k)
    [~, N] = size(X);
    H = zeros(k, N);
    
    for i = 1: N
        dist = sqrt(sum((Y - X(:, i)) .^ 2));
        sort_dist = sort(dist);
        H(:, i) = find(dist <= sort_dist(k), k);
    end
end
