function y = IIRfilter(x)
theta=(3146/8000)*2*pi;
r=0.995;
N=length(x);
y=zeros(1,N);
y(1)=(1-r)*x(1);
y(2)=(1-r)*x(2)+2*r*cos(theta)*y(1);
for k=3:N
    y(k)=(1-r)*x(k)+2*r*cos(theta)*y(k-1)-r^2*y(k-2);
 end
end
