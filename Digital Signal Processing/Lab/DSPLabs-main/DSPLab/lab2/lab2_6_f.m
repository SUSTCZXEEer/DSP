function y=lab2_6_f(x)
%y[n]=x[n]-1/2x[n-1]
N=length(x);
x=[0 x];
y=zeros(1,N);
for n=1:N
    y(n)=x(n+1)-(1/2)*x(n);
end
end

