Map map;
Healthbars healthbar;

void setup(){
  size(1800,1000);
  frameRate(60);
  map = new Map();
  healthbar = new Healthbars();
  
  background(map.getBackground());
  
}

void draw(){
  background(map.getBackground());
  enemy1.draw();
  enemy1.auto();
  player.draw();
  player.move();
  
  //may add a random emy1 class
  //emy1.draw();
}
