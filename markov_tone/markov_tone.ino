#include <Audio.h>
#include <Wire.h>
#include <SPI.h>
#include <SD.h>
#include <SerialFlash.h>

// GUItool: begin automatically generated code
AudioSynthWaveformSine   modulation;     //xy=323.0056381225586,328.0056438446045
AudioSynthWaveformModulated left_tone;   //xy=530.0056648254395,308.0056457519531
AudioSynthWaveformModulated right_tone;   //xy=533.1874694824219,363.0965919494629
AudioMixer4              mixer;         //xy=719.1874771118164,330.0965805053711
AudioOutputI2S           i2s;            //xy=868.0056648254395,332.0056505203247
AudioConnection          patchCord1(modulation, 0, left_tone, 0);
AudioConnection          patchCord2(modulation, 0, right_tone, 0);
AudioConnection          patchCord3(left_tone, 0, mixer, 0);
AudioConnection          patchCord4(right_tone, 0, mixer, 1);
AudioConnection          patchCord5(mixer, 0, i2s, 0);
AudioConnection          patchCord6(mixer, 0, i2s, 1);
AudioControlSGTL5000     codec;          //xy=607.0056762695312,492.0056781768799
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

  mixer.gain(0,0);
  mixer.gain(1,0);

  current_waveform = WAVEFORM_SINE;
  left_tone.begin(current_waveform);
  right_tone.begin(current_waveform);
  Serial1.begin(9600);
  pinMode(LED,OUTPUT);
  digitalWrite(LED,LOW);
 }

void loop() {
  serialUI();
}

void serialUI(){
  if (Serial1.available()){
    char msg = Serial1.read();
    if (msg=='L' | msg == 'R' | msg == 'S' | msg == 'V'){
      if (msg=='L'){ // left tone
        mixer.gain(0,1);
        mixer.gain(1,0);
        digitalWrite(LED,HIGH);
      }
      else if (msg=='R'){ //right tone
        mixer.gain(0,0);
        mixer.gain(1,1);
        digitalWrite(LED,HIGH);
      }
      else if (msg=='S'){ 
        mixer.gain(0,0);
        mixer.gain(1,0);
        digitalWrite(LED,LOW);
      }
      else if (msg=='V'){ 
        float volume = parseData();
        // //don't go above 65 or below 0
        // if (volume>65) {
        //   volume = 65;
        // }
        // else if (volume<0) {
        //   volume = 0;
        // }
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

