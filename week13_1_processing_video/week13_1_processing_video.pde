//week13_1_processing_video
//sketch-library-manage library 安裝 video
import processing .video.*; //java 使用外掛的匯入
//有視訊鏡頭的用這個版本
Capture video;
void setup(){
  size(640,480);
  video = new Capture(this, 640, 480);
  video.start();
  
}
void draw(){
  if(video.available()) video.read();
  image(video, 0, 0);
  
}
