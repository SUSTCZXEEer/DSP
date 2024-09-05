function waves = gen_wave(tone,scale,noctave,rising,rhythm,fs)
ratio=[1 2^(1/6) 2^(1/6) 2^(1/12) 2^(1/6) 2^(1/6) 2^(1/6)];
tone_list=[261.5 293.5 329.5 349 391.5 440 494];
hz1=tone_list(scale);

for a=1:tone
    hz1=hz1*ratio(a);
end
% 若tone为0，则无声音
if tone==0
    hz1=0;
end

if noctave>0
    hz1=hz1*(noctave+1);
elseif noctave<0
    hz1=hz1/sqrt(noctave-1);
else
    hz1=hz1;
end

if rising==1
    hz1=hz1*2^(1/12);
elseif rising==-1
    hz1=hz1/(2^(1/12));
end

f=hz1;
t=linspace(0,rhythm,fs*rhythm);
% y=sin(2*pi*f*t);
o_mega=2*pi*f;
y=0.85*sin(o_mega*t)+0.12*sin(2*o_mega*t)+0.026*sin(3*o_mega*t)+0.004*sin(4*o_mega*t);
% 衰减函数
%y=y.*exp(-t./rhythm);
atten=(exp(-2*(t-1/10*rhythm)./rhythm)).*(t>rhythm/10)+10/rhythm*t.*(t<=rhythm/10);
y=y.*atten;

waves=y;
end

