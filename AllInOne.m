function [] = AllInOne(fs)
    freqSample = CreateSineWave(fs,5000);
    audiowrite("team9-sinetone.wav",freqSample,fs);
    Spec(freqSample,"5000Hz");
    chirpSample = CreateChirpWave(fs,8000);
    audiowrite("team9-chirp.wav",chirpSample,fs);
    Spec(chirpSample,"Chirp");
    FiveNoteSample = CreateFiveNotes(fs);
    audiowrite("team9-cetk.wav",FiveNoteSample,fs);
    Spec(FiveNoteSample,"CETK");
    fox = audioread("fox.wav");
    combined = combineSamples(fox,freqSample);
    audiowrite("team9-speechchirp.wav",combined,fs);
    Spec(combined,"Fox + 5000Hz")
    filtered = FilterSample(combined);
    audiowrite("team9-filteredspeechsine.wav" ,filtered,44100)
    Spec(filtered,"Filter Combined")
    steroAudio = createStereo(fox,freqSample);
    sound(steroAudio,44100);
    audiowrite("team9-stereospeechsine.wav" ,steroAudio,44100)
end

