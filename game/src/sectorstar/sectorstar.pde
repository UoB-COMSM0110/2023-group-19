Map map;

void setup(){
  size(1800,1000);
  frameRate(60);
  map = new Map();
  background(map.getBackground());
}

void draw(){
  background(map.getBackground());
  player.draw();
  enemy1.draw();
  //may add a random emy1 class
  //emy1.draw();
}
