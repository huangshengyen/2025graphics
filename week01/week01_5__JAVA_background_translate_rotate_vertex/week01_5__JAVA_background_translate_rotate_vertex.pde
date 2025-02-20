//week01-5 JAVA-background-translate-rotate-vertex
void setup(){
  size(400,400,P3D); //設定好全部的 OpenGL
}
float angle = 0;
void draw(){
  background(0);//背景清掉，才能正確畫新的內容
  translate(200,200); //把東西往(200,200)移動
  rotate(angle); //在座標(0,0)轉動
  angle += 0.01;
  beginShape(TRIANGLES); //開始畫 三角形
  fill(255,0,0); vertex(0,100*2);
  fill(0,255,0); vertex(87*2,-50*2);
  fill(0,0,255); vertex(-87*2,-50*2);
  endShape();
}
