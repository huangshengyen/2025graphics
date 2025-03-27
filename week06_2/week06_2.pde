//week06_2
void setup(){
  size(500, 500, P3D);
}
void draw(){
  background(142);
  ellipse(width/2, height/2, 200, 200);
  
  translate(width/2, height/2);
  pushMatrix();
    if(mousePressed) rotateZ(radians(frameCount));
    translate(-50, 0, 0);
    box(100, 30, 30);
  popMatrix();
}
