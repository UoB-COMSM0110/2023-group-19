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
  healthbar.draw();
  enemy1.draw();
  enemy1.auto();
  player.draw();
  player.move();
  enemy2.draw();
  enemy2.auto();
  //may add a random emy1 class
  //emy1.draw();
}
