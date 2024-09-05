function  [J] = Integ2(N)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
n=1/N;
t=0:n:1-n;
area=exp(t);
J = sum(area.*n);
end

