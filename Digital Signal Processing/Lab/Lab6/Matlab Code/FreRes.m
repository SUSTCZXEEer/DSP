function [mag,phase] = FreRes(num,den)

nP = 0:-1:1-length(num);
nD = 0:-1:1-length(den);
syms w;

P = sum(num.*exp(1i*w).^nP);
D = sum(den.*exp(1i*w).^nD);

H = P/D;

mag = abs(H);
phase = angle(H); 

subplot(311),fplot(w,(abs(H)),[-pi,pi]);
xlabel('w(rad)'),ylabel('magnitude'),title('magnitude response');
subplot(312),fplot(w,20*log10(abs(H)),[-pi,pi]);
xlabel('w(rad)'),ylabel('magnitude(dB)'),title('magnitude response(dB)');
subplot(313),fplot(w,angle(H),[-pi,pi]);
xlabel('w(rad)'),ylabel('phase response'),title('phase response')
hold on
end

