function y=lab2_4_f2(x)
% y[n]=y[n-1]/2+x[n]
N=length(x);
y=zeros(1,N);
y(1)=x(1);
for n=2:length(x)
    y(n)=y(n-1)/2+x(n);
end
end
