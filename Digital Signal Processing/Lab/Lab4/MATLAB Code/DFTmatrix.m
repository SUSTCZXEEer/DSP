function A = DFTmatrix(N)
    [n, k] = meshgrid(0:N-1);
    A = exp(-1i * 2 * pi * n .* k / N);
end