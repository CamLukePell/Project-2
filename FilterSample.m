function [filteredSample] = FilterSample(sample)
rate = (4000/(44100/2));
F = [0 0.13 rate 1];
A = [1 1 0 0 ];
filter = firls(100,F, A);
filteredSample = conv(sample,filter);
end

