//week05_5_rotate_radians_frameCount_translate_mouseX_mouseY
//比較 rotate 與 translate 的順序
void setup(){
  size(400, 400);
}
void draw(){
  background(204);
  //請做以下測試: 把下面2行，調一下順序
  //會發現，兩行順序不同，一個是自轉，一個是公轉
  //在電腦圖學理，畫圖時，會照著「累積的移動、旋轉」來放東西
  rotate(radians(frameCount)*10); //一秒有60個frame，轉60度，要變radians單位
  translate(mouseX, mouseY); //移到 mouse 所在的位置
  rect(-50, -5, 100, 10); //寬度100的棒子，但是放在左上角
}
