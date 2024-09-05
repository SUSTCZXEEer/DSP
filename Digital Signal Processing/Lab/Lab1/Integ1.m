function  [I] = Integ1(N)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
n=(2*pi)/N;
t=0:n:2*pi-n;
area=sin((5.*t)).^2;
I = sum(area.*n);
end

