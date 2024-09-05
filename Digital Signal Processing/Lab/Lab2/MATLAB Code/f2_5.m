function y=f2_5(x)
% y[n]=y[n-1]+(x[n]-x[n-3])/3
N=length(x);
y=zeros(1,N);
y(1)=x(1)/3;
y(2)=y(1)+x(2)/3;
y(3)=y(2)+x(3)/3;
 for n=4:length(x)
    y(n)=y(n-1)+(x(n)-x(n-3))/3;
 end
end

