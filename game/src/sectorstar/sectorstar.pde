PImage map;
void setup(){
  //test backgrand 
  size(1800,1000);
  frameRate(30);
//   Map map = new Map();
//   background(map.background[0]);
background(0);
map = loadImage("../../resources/backgrounds/back0.jpeg");
}

void draw(){
  image(map,0,0);
  player.draw(); // test the players move
  //may add a random emy1 class
  //emy1.draw();

}
