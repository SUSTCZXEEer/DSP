function x = IDFTsum(X)
N=length(X);
x=zeros(1,N);
for n=1:N
    for k=1:N
        x(n)=x(n)+(1/N)*sum(X(k)*exp(1i*2*pi*(k-1)*(n-1)/N));
    end
end

end

