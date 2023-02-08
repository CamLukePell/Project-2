function [] = PlotAudio(AudioData,plotTitle)
    time = 1:length(AudioData);
    time = time/44100;   %Divide by Freq of 44100 Hz
    plot(time,AudioData);
    title(plotTitle);
    ylabel('Amplitude')
    xlabel('Seconds');
end

