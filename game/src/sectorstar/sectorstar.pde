Map map;

void setup(){
  size(1800,1000);
  frameRate(30);
  map = new Map();
  background(map.getBackground());
}

void draw(){
  background(map.getBackground());
  player.draw();
  //may add a random emy1 class
  //emy1.draw();
}
