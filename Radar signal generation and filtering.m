%Radar signal generation and filtering

fs = 1e4;              % Sampling frequency 
T = 1e-2;              % Duration of chirp 
t = 0:1/fs:T;
f0 = 500;              % Start frequency 
f1 = 3000;             % End frequency 

chirp_signal = chirp(t, f0, T, f1);

figure;
plot(t, chirp_signal);
xlabel('Time (s)');
ylabel('Amplitude');
title('Clean Chirp Signal');
grid on;

snr_db = 0;  % signal-to-noise ratio in dB
noisy_signal = awgn(chirp_signal, snr_db, 'measured');

figure;
plot(t, noisy_signal);
xlabel('Time (s)');
ylabel('Amplitude');
title('Noisy Chirp Signal');
grid on;

f_low = 400; f_high = 3500;
[b, a] = butter(4, [f_low f_high]/(fs/2), 'bandpass');
filtered_signal = filter(b, a, noisy_signal);

figure;
plot(t, filtered_signal);
xlabel('Time (s)');
ylabel('Amplitude');
title('Filtered Chirp Signal');
grid on;

mf = fliplr(chirp_signal);  % Time-reversed template
matched_output = conv(noisy_signal, mf, 'same');

figure;
plot(matched_output);
xlabel('Samples');
ylabel('Matched Filter Output');
title('Matched Filter Response');
grid on;
