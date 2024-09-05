function [I] = integ1(N)
delta=(2*pi)/N;
t=0:delta:2*pi-delta;
inval=(sin(5.*t)).^2;
I= sum(inval.*delta);
end