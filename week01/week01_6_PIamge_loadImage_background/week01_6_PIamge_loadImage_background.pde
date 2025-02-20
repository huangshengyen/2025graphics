//week01_6_PIamge_loadImage_background
//請先用小畫家，做出400*400的funny.png
//再從檔案總管理，把funny.png圖檔，拉到程式裡
PImage img = loadImage("funny.png");
size(400,400); //size()要與 圖片大小相同
background(img); //才能再背景顯示
