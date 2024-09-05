function X = fft_stage(x)
N=length(x);
j=sqrt(-1);
if N==2
    X(1)=x(1)+x(2);
    X(2)=x(1)-x(2);
    return
else
    k=0:1:N/2-1;
    x_even=x(1:2:N);
    x_odd=x(2:2:N);
    
    X0=fft_stage(x_even);
    X1=fft_stage(x_odd);
    
    twiddle_N=exp(-j*2*pi*k/N);
    X=[X0+X1.*twiddle_N X0-X1.*twiddle_N];
    
end
end

