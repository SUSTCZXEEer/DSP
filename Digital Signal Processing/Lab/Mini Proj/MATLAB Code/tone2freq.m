function freq = tone2freq(tone, scale, noctave, rising)
    % converts a musical tone to its corresponding frequency.


    % Define the ratio of frequencies for each tone in the scale
    ratio = [1 2^(1/6) 2^(1/6) 2^(1/12) 2^(1/6) 2^(1/6) 2^(1/6)];
    
    % Define the base frequencies for each scale
    tone_list = [261.5 293.5 329.5 349 391.5 440 494];
    f = tone_list(scale) * prod(ratio(1:tone));
    
    % Adjust the frequency based on the number of octaves
    if noctave > 0
        f = f * 2*noctave;
    elseif noctave < 0
        f = f / (2*abs(noctave ));
    end
    
    % Adjust the frequency based on the number of semitones rising
    f = f * 2^(rising/12);
    
    % Assign the calculated frequency to the output variable
    freq = f;
end