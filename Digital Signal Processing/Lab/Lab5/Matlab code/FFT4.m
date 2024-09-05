function X = FFT4(x)
%N=length(x);
N=4;
x_even=x(1:2:N);   X_even=FFT2(x_even);
x_odd=x(2:2:N);    X_odd=FFT2(x_odd);

k=0:N/2-1;
twiddle_factor=exp(-1i*2*pi*k/N);

X_odd=twiddle_factor.*X_odd;
X=[X_even+X_odd   X_even-X_odd];
end

