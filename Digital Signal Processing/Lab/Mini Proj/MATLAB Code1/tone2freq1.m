function freq = tone2freq1(tone, noctave, rising)
    % converts a musical tone to its corresponding frequency.
    % Define the ratio of frequencies for each tone in the scale
    ratio = [1 2^(1/6) 2^(1/6) 2^(1/12) 2^(1/6) 2^(1/6) 2^(1/6)];
   

      f = 440.* prod(ratio(1:tone));
    
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