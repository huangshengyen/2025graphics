//week02_6_ArrayList_ArrayList_Integer_for_for_mouseDragged_mousePressed
//想要有很多段，不要「一筆畫」一直畫
ArrayList<Integer> x,y; //先有2個還沒準備好的資料結構
ArrayList<ArrayList<Integer>> xx = new ArrayList<ArrayList<Integer>>();
ArrayList<ArrayList<Integer>> yy = new ArrayList<ArrayList<Integer>>(); 
PImage img;
void setup(){
  size(400,400);
  img = loadImage("funny.png"); //每次新的檔案都要把圖拉進來
} //記得把圖檔(像上周一樣)拉到程式碼中
void draw(){
  background(img);
  fill(255,200);
  rect(0,0,400,400); //畫超大的四邊形，全部蓋住
  //上面是week02-4，下面用迴圈從資料結構取出來
  for(int I=0; I<xx.size();I++){ //大寫I對應大的資料結構
    ArrayList<Integer> x = xx.get(I); //取出裡面小的資料結構
    ArrayList<Integer> y = yy.get(I); 
    for(int i=1; i<x.size(); i++){
      line(x.get(i),y.get(i),x.get(i-1),y.get(i-1));
    }
  }
}
void mouseDragged(){
  x.add(mouseX);
  y.add(mouseY);
}
void mousePressed(){
  x = new ArrayList<Integer>(); xx.add(x);
  y = new ArrayList<Integer>(); yy.add(y);
}
