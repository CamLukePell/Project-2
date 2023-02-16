function [data] = CreateSineWave(Fs,freq)
    segment = 1/Fs;
    points = (0:segment:(5-segment));      %- segment to get equal size to fox.wav file
    data = (0:segment:(5-segment))';
  
    w0 = freq*2*pi;
    for n = 1:length(data)
       data(n) = sin(w0*points(n));
    end
end

