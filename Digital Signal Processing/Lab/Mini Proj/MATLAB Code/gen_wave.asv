function waves= gen_wave(tone,scale,noctave,rising,rhythm,fs)

  % Define the ratio of frequencies for each tone in the scale
    ratio = [1 2^(1/6) 2^(1/6) 2^(1/12) 2^(1/6) 2^(1/6) 2^(1/6)];

  % Define the base frequencies for each scale
    tone_list = [261.5 293.5 329.5 349 391.5 440 494];
 
  % 若tone为0，则无声音
if tone==0
    f=0;
else
   % Calculate the frequency based on the input parameters
    f = tone_list(scale) * prod(ratio(1:tone));
end
    % Adjust the frequency based on the number of octaves
    if noctave > 0
        f = f * 2*noctave;
    elseif noctave < 0
        f = f / (2*abs(noctave ));
    end
    
    % Adjust the frequency based on the number of semitones rising
    f = f * 2^(rising/12);

   

t = linspace(0, rhythm, fs * rhythm);
o_mega = 2 * pi * f;


% coefficients and frequencies of harmonics
coefficients = [1, 0.1056, 0.1856, 0.0523, 0.0315, 0.0379]; 
frequencies = [1, 2, 3, 4, 5, 6]; 
 values = sin(o_mega * frequencies' * t); 
 % values = sawtooth(o_mega * frequencies' * t); 
 % values = square(o_mega * frequencies' * t);

y = coefficients * values; 

%Exponential decay function
decay_rate = 3; 
decay = exp(-decay_rate * t / rhythm);

% % Linear deacy funcion
% decay_rate = 1/rhythm;
% 
%     decay =1-decay_rate*t;

% 
% %Power exponential decay function
% decay_rate=9;
% r = 1/rhythm; 
% decay = (1 - r * t).^decay_rate; 
waves=y;
 waves = waves.* decay;

 % y = y .* modulation;

end
