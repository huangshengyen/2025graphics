//week02_5_ArrayList_Integer_new_for_size_get_add_mouseDragged
//要利用資料結構，把歷史軌跡記起來
ArrayList<Integer> x = new ArrayList<Integer>();
ArrayList<Integer> y = new ArrayList<Integer>();
PImage img;
void setup(){
  size(400,400);
  img = loadImage("funny.png"); //每次新的檔案都要把圖拉進來
} //記得把圖檔(像上周一樣)拉到程式碼中
void draw(){
  background(img);
  fill(255,200);
  rect(0,0,400,400); //畫超大的四邊形，全部蓋住
  //上面是 week02-4，下面用迴圈，從資料結構取出來
  for(int i=1; i<x.size(); i++){
    line(x.get(i),y.get(i),x.get(i-1),y.get(i-1));
  }
}
void mouseDragged(){
  x.add(mouseX);
  y.add(mouseY);
}
