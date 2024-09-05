function [I] = integ2(N)
delta=1/N;
t=0:delta:1-delta;
inval=exp(t);
I= sum(inval.*delta);
end