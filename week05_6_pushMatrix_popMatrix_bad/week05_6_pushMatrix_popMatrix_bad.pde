//week05_6_pushMatrix_popMatrix_bad
// 因為有很多的移動、旋轉，大腦會亂掉，所以用「分階層」做事情
void setup(){
  size(400, 400);
}
void draw(){
  background(204);
  
  
  translate(width/2, height/2); //把下面這坨移到畫面中心
  rotate(radians(frameCount)*10);
  rect(-50, -5, 100, 10);
  
  //希望在左邊 -100 的地方轉動，但是他亂掉了
  translate(width/2-100, height/2); //把下面這坨移到畫面中心
  rotate(radians(frameCount)*10);
  rect(-50, -5, 100, 10);
}
