function freq = tone2freq(tone,scale,noctave,rising)
ratio=[1 2^(1/6) 2^(1/6) 2^(1/12) 2^(1/6) 2^(1/6) 2^(1/6)];
tone_list=[261.5 293.5 329.5 349 391.5 440 494];
hz1=tone_list(scale);

for a=1:tone
    hz1=hz1*ratio(a);
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

freq=hz1;
end