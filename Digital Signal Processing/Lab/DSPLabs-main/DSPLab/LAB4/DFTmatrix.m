function A = DFTmatrix(N)
A=zeros(N,N);
j=sqrt(-1);

for a=1:N
    for b=1:N
        A(a,b)=exp(-j*2*pi*(a-1)*(b-1)/N);
    end
end

end

