function y=lab2_4_f1(x)
% y[n]=x[n]-x[n-1]
N=length(x);
y=zeros(1,N);
y(1)=x(1);
for n=2:length(x)
    y(n)=x(n)-x(n-1);
end
end

