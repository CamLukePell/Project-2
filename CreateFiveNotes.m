function [FiveNoteSample] = CreateFiveNotes(Fs)
    segment = 1/Fs;
    points = (0:segment:(5-segment));      % segment to get equal size to fox.wav file
    FiveNoteSample = (0:segment:(5-segment))';
    sampleSize = length(FiveNoteSample);
    freq = [2349,2637,2093,1046,1567];
    time = [sampleSize*3/32,sampleSize*7/32,sampleSize*7/16,sampleSize*19/32,sampleSize];
    time = round(time);
    for n = 1:time(1)
        w0 = 2*pi*freq(1);
       FiveNoteSample(n) = sin(w0*points(n));
    end
    for m = 1:(length(time)-1)
        for n = time(m):time(m+1)
            w0 = 2*pi*freq(m+1);
            FiveNoteSample(n) = sin(w0*points(n));
        end
    end
end

