function [mag,phase] = FreRes(num,den)
j=sqrt(-1);
nP = 0:-1:1-length(num);
nD = 0:-1:1-length(den);
syms w;

P = sum(num.*exp(j*w).^nP);
D = sum(den.*exp(j*w).^nD);

H = P/D;

mag = abs(H);
phase = angle(H); 

subplot(311),fplot(w,(abs(H)),[-pi,pi]);
xlabel('w(rad)'),ylabel('magnitude');


subplot(312),fplot(w,20*log10(abs(H)),[-pi,pi]);
xlabel('w(rad)'),ylabel('magnitude(dB)');


subplot(313),fplot(w,angle(H),[-pi,pi]);
xlabel('w(rad)'),ylabel('phase');

end

