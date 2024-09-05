function X = DTFT(x,n0,dw)
j=sqrt(-1);
n=-10:1:10;
w=-pi:dw:pi;

X=exp(-j*w'*(n+n0-1))*x.';

subplot(2,1,1);
plot(w,abs(X));
ylabel("magnitude");
subplot(2,1,2);
plot(w,angle(X));
ylabel("phase");
end