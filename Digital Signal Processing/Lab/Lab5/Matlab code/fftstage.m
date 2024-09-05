function X = fftstage(x)
N=length(x);
if N==2
    X(1)=x(1)+x(2);
    X(2)=x(1)-x(2);
    return
else
    k=0:N/2-1;
    x_even=x(1:2:N);  
    x_odd=x(2:2:N);  
    X_even=fftstage(x_even);
     X_odd=fftstage(x_odd);

    twiddle_factor=exp(-1i*2*pi/N*k);

    X_odd=X_odd.*twiddle_factor;
    X=[X_even+X_odd   X_even-X_odd];   
end
end
