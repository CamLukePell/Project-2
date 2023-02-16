function [chirpSample] = CreateChirpWave(Fs,Freq)
    segment = 1/Fs;
    points = (0:segment:(5-segment));      % segment to get equal size to fox.wav file
    chirpSample = (0:segment:(5-segment))';
    sampleSize = length(chirpSample);
    for n = 1:sampleSize
        w0 = pi*(n/sampleSize)*Freq;
       chirpSample(n) = sin(w0*points(n));
    end
end

