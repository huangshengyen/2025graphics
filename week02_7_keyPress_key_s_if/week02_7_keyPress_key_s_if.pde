//week02_7_keyPress_key_s_if
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
void keyPressed(){
  if(key == 's' || key == 'S'){ //如果按下英文字母小寫 or 大寫 s 想 save 存檔的話
    for(int I=0; I<xx.size(); I++){ //大寫I 對應大的資料結構
      ArrayList<Integer> x = xx.get(I); //取出裡面小的資料結構
      ArrayList<Integer> y = yy.get(I); 
      println("beginShape();"); //beginShape();
      for(int i=1; i<x.size(); i++){ //小的，再照舊畫
        println("vertex(" + mouseX + "," + mouseY + ");" );
      }//改在 keyPressed() 按下 s 或 S 時，再全部印
      println("endShape();"); //endShape();
    }
  }
}
void mouseDragged(){
  //println("vertex(mouseX, mouseY);");
  //println("vertex(" + mouseX + "," + mouseY + ");" ); 不要在這裡印
  x.add(mouseX);
  y.add(mouseY);
}
void mousePressed(){ //滑鼠按下去時，建新的資料結構
  x = new ArrayList<Integer>(); xx.add(x);
  y = new ArrayList<Integer>(); yy.add(y);
}
