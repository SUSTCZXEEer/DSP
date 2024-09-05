function X = DTFT(x,n0,dw)
n=1:length(x);
w=-pi:dw:pi;
X=0;
for k=1:length(x)
    X=X+x(k)*exp(-1i*w*(k+n0-1));
end







figure
subplot(2,1,1);
plot(w,abs(X));
ylabel("Magnitude");
subplot(2,1,2);
plot(w,angle(X));
ylabel("Phase");
end