function h = LPFtrunc(N)
h=zeros(1,N);
for n=1:N
    h(n)=2/pi*sinc(2/pi*(n-1-(N-1)./2));
end

end

