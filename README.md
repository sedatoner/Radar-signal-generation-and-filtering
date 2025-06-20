# Radar-signal-generation-and-filtering
Bu proje, radar sistemlerinde kullanılan temel sinyalin oluşturulması ve bu sinyale gürültü eklenmesi, ardından filtreleme (örneğin low-pass, matched filter) işlemleriyle sinyalin işlenmesini içerir.
# Radar Signal Generation and Filtering (MATLAB)

This project simulates the generation of a radar chirp signal, adds white Gaussian noise, and applies filtering techniques to recover the original signal.

## Features

- Chirp signal generation
- Noise injection using AWGN
- Bandpass filtering (Butterworth)
- Optional: Matched filter implementation

## How to Run

1. Open `radar_filtering.m` in MATLAB
2. Run the script
3. View the following plots:
   - Clean Chirp Signal
   - Noisy Signal
   - Filtered Signal
   - Matched Filter Output (bonus)

## Parameters

- Chirp: 500 Hz to 3 kHz over 10 ms
- Sampling: 10 kHz
- SNR: 0 dB (adjustable)
- Filter: 4th-order Butterworth bandpass

## License

MIT
