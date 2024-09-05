function X = FFT8(x)
k=0:3;
j=sqrt(-1);
twiddle_8=exp(-j*2*pi*k/8);
N=length(x);

x_even=x(1:2:N);
x_odd=x(2:2:N);

X0_FFT4=FFT4(x_even);
X1_FFT4=FFT4(x_odd);

X(1)=X0_FFT4(1)+X1_FFT4(1).*twiddle_8(1);
X(2)=X0_FFT4(2)+X1_FFT4(2).*twiddle_8(2);
X(3)=X0_FFT4(3)+X1_FFT4(3).*twiddle_8(3);
X(4)=X0_FFT4(4)+X1_FFT4(4).*twiddle_8(4);

X(5)=X0_FFT4(1)-X1_FFT4(1).*twiddle_8(1);
X(6)=X0_FFT4(2)-X1_FFT4(2).*twiddle_8(2);
X(7)=X0_FFT4(3)-X1_FFT4(3).*twiddle_8(3);
X(8)=X0_FFT4(4)-X1_FFT4(4).*twiddle_8(4);
end

