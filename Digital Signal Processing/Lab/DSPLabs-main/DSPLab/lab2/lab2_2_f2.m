function y=lab2_2_f2(x)
% y[n]=0.8*y[n-1]+0.2*x[n]
N=length(x);
y=zeros(1,N);
y(1)=0.2*x(1);
for n=2:length(x)
    y(n)=0.8*y(n-1)+0.2*x(n);
end
end

