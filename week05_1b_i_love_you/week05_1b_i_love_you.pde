 //week05_1b_i_love_you
size(300, 300); //大小300 X 300
stroke(255, 0, 0); // 紅色的線條
translate(width/2, height/2);//translate(150, 150);
for(int xx = -150; xx < 150; xx++){ //大的 X 0...300
  for(int yy = -150; yy < 150; yy++){ //大的 Y 0...300
    float x = xx /100.0; //減一半、除一半
    float y = -yy/100.0; //減一半、除一半
    // 0...300 變成 -150...+150 再變成 -1.5 ~ +1.5
    float d = x*x + y*y - 1; 
    if( d*d*d - x*x*y*y*y < 0 ) point(xx, yy);
  }
}
