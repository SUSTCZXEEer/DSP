function y=f2_3(x)
% y[n]=(1/3)_(x[n]+x[n-1]+x[n-2])
N=length(x);
y=zeros(1,N);
y(1)=x(1)/3;
y(2)=(x(1)+x(2))/3;
 for n=3:length(x)
    y(n)=(x(n)+x(n-1)+x(n-2))/3;
 end
end

