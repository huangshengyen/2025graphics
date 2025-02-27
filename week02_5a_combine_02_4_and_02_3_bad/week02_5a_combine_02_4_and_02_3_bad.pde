//week02_5a_combine_02_4_and_02_3_bad
//要描圖卻出錯
PImage img;
void setup(){
  size(400,400);
  img = loadImage("funny.png");
} //記得把圖檔(像上周一樣)拉到程式碼中
void draw(){
  background(img);
  fill(255,200);
  rect(0,0,400,400); //畫超大的四邊形，全部蓋住
  //上面是 week02_4，下面是 week02-3 但線畫不上去
  stroke(255,0,0); //紅色的線
  if(mousePressed) line(mouseX, mouseY, pmouseX, pmouseY);
}
