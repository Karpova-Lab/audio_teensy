#include <Audio.h>
#include <Wire.h>
#include <SPI.h>
#include <SD.h>
#include <SerialFlash.h>

// GUItool: begin automatically generated code
AudioSynthWaveformSine   modulation;     //xy=405,328
AudioSynthSimpleDrum     bloop_tone;          //xy=585,409
AudioSynthWaveformModulated left_tone;      //xy=590,314
AudioSynthWaveformModulated right_tone;     //xy=592,355
AudioMixer4              mixer;          //xy=791,371
AudioOutputI2S           i2s;            //xy=940,373
AudioConnection          patchCord1(modulation, 0, left_tone, 0);
AudioConnection          patchCord2(modulation, 0, right_tone, 0);
AudioConnection          patchCord3(bloop_tone, 0, mixer, 2);
AudioConnection          patchCord4(left_tone, 0, mixer, 0);
AudioConnection          patchCord5(right_tone, 0, mixer, 1);
AudioConnection          patchCord6(mixer, 0, i2s, 0);
AudioConnection          patchCord7(mixer, 0, i2s, 1);
AudioControlSGTL5000     codec;          //xy=707,513
// GUItool: end automatically generated code



int current_waveform=0;
const int LED = 13;

void setup() {
  // put your setup code here, to run once:
  AudioMemory(10);
  codec.enable();
  codec.volume(0.10);

  modulation.frequency(20/3.0);
  modulation.amplitude(.019);

  left_tone.frequency(6500);
  left_tone.amplitude(1.0);
  right_tone.frequency(14000);
  right_tone.amplitude(1.0);

  
  bloop_tone.frequency(2000);
  bloop_tone.length(100);
  bloop_tone.secondMix(0.0);
  bloop_tone.pitchMod(0.3);

  mixer.gain(0,0);
  mixer.gain(1,0);
  mixer.gain(2,0);

  current_waveform = WAVEFORM_SINE;
  left_tone.begin(current_waveform);
  right_tone.begin(current_waveform);
  Serial1.begin(9600);
  pinMode(LED,OUTPUT);
  digitalWrite(LED,LOW);
 }

void loop() {
  if (Serial1.available()){
    char msg = Serial1.read();
    if (msg=='L' | msg == 'R' | msg == 'S' | msg == 'V' | msg == 'B'){
      if (msg=='L'){ // left tone
        mixer.gain(0,1);
        mixer.gain(1,0);
        mixer.gain(2,0);
        digitalWrite(LED,HIGH);
      }
      else if (msg=='R'){ //right tone
        mixer.gain(0,0);
        mixer.gain(1,1);
        mixer.gain(2,0);
        digitalWrite(LED,HIGH);
      }
      else if (msg=='S'){ 
        mixer.gain(0,0);
        mixer.gain(1,0);
        mixer.gain(2,0);
        digitalWrite(LED,LOW);
      }
      else if (msg=='B'){ 
        mixer.gain(0,0);
        mixer.gain(1,0);
        mixer.gain(2,1);
        bloop_tone.noteOn();
        digitalWrite(LED,HIGH);
        delay(50);
        digitalWrite(LED,LOW);
      }
      else if (msg=='V'){ 
        float volume = parseData();
        volume = 2*volume/100.0;
        codec.volume(volume);
      }
    }    
  }
}

int parseData(){
  char msgData[10] = "";
  Serial1.readBytesUntil('\n',msgData,10);
  char* msgPointer;
  msgPointer = strtok(msgData,",");
  return atoi(msgPointer);
}
