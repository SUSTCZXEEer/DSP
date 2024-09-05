function x = IDFTsum(X)
N=length(X);
j=sqrt(-1);

x=zeros(1,N);
for n=1:N
    for k=1:N
        x(n)=x(n)+(1/N)*sum(X(k)*exp(j*2*pi*(k-1)*(n-1)/N));
    end
end

end

