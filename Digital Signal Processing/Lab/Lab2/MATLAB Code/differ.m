function [y] = differ(x)

% y[n]=x[n]-x[n-1];
N=length(x);
y=zeros(1,N);
x=[0 x];
 for n=1:N
    y(n)=x(n+1)-x(n);
 end    
end

