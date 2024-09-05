% function h=LPFTrunc(N)
% for i=1:N
% h(i)=2/pi*sinc(2/pi*(i-1-(N-1)/2));
% end
% end
function h = LPFTrunc(N)
n=0:N-1;
 h = 2/pi * sinc(2/pi * ( n - (N-1)/2));
end
