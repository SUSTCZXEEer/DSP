function [y] = zeropadding(x)
N=length(x);
nextPowerOf2 = nextpow2(N);  
N1 = 2^nextPowerOf2;
y = [x, zeros(1, N1 - N)];
end