//week13_2_camera_movie_eye
//電腦圖學繪圖時，會設定camera的相關係數
import prosessing.video.*;
void setup(){
  size(720, 480, P3D);
  movie = new Movie(this, "street.mov");
  movie.loop();
}
void draw(){
  background(128);
  camera(mouseX, mouseY, 500, 360, 240, 0, 1, 0);
  if(movie.available()) movie.read();
  image(movie, 0, 0);
}
