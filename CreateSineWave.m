function [data] = CreateSineWave(Fs,freq)
    points = (0:1/Fs:5);
    data = (0:1/Fs:5)';
  
    w0 = freq*2*pi;
    for n = 1:length(data)
       data(n) = sin(w0*points(n));
    end
end

