# MP3 Encoder Example on ESP32

There is no native MP3 encoder in ESP-ADF. So we port the [Shine encoder](https://github.com/toots/shine) to ESP32. No optimization has been made yet.

The example starts a FreeRTOS task to convert in.wav to out.mp3.

## Testing

The ESP32 is running at 240MHz. Use -Os while compiling.

A simple benchmark shows:
- Read WAV from SPIFFS, don't write to MP3, it takes 11s to convert a 10s mono WAV.
- Read WAV from SPIFFS, and write to MP3, it takes 22s to convert a 10s mono WAV (and slower if run more than once).

No significant diffence if we turn on the PSRAM，TICK=1000.
