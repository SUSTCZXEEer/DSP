function y=integ(x)
% y[n]=x[n]+y[n-1]
N=length(x);
y=zeros(1,N+1);
 for n=1:N
 y(n+1)=x(n)+y(n);
 end
y=y(2:N+1);%keep the same length of y
end