function X = dcDFT(x)
N=length(x);

x0=x(1:2:N);% even part
x1=x(2:2:N);% odd part
X0=DFTsum(x0);
X1=DFTsum(x1);

k=0:1:N/2-1;
twiddle_factor=exp(-1i*2*pi*k/N);
X1=twiddle_factor.*X1;
X=[X0+X1 X0-X1];
end