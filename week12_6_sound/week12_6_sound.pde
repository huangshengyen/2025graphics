//week12_6_sound
//要有聲音，需要聲音的 library 函式庫
//Sketch - library - Managed Libraries 找 sound
//會看到 Sound | Provides a simple way to work with audio
//按右下角 Install 下載安裝(成功後會有小勾勾)
//安裝好sound後，會有 File - Example 點開 Libraries 核心函式庫 Sound
// Soundfile 那堆範例 看 SimplePlayback 簡單播放音樂的範例
import processing.sound.*;
SoundFile mySound;
void setup(){
  size(400, 400);
  mySound = new SoundFile(this, "music.mp3");
  mySound.play();
}
void draw(){
  
}
