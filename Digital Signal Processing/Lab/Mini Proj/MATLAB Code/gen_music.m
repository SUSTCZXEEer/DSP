function music_sequence = gen_music(scale, fs,sequence,T)
    music_sequence = [];
% gen_wave(tone,scale,noctave,rising,rhythm,fs)    
[numRows, ~] = size(sequence);
for row = 1:numRows
     rhythm = sequence(row, 4);
     rhythm=rhythm.*T;
     tone = sequence(row, 1);
     noctave= sequence(row, 2); 
     rising = sequence(row, 3);     
     wave = gen_wave(tone,scale,noctave,rising,rhythm,fs);
     music_sequence = [music_sequence, wave];
 end
end



