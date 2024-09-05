function X = dcDFT(x)
N=length(x);
j=sqrt(-1);
k=0:1:N/2-1;
twiddle_k=exp(-j*2*pi*k/N);

x0=x(1:2:N);% even part
x1=x(2:2:N);% odd part

X0=DFTsum(x0);
X1=DFTsum(x1);

X_up=X0+twiddle_k.*X1;
X_down=X0-twiddle_k.*X1;

X=[X_up X_down];
end