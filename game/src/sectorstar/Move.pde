// define a player
class Ship {
  public boolean[] movementKeys = new boolean[4];
  int speed = 2; // player speed
  int transy = 0;
  int transx = 0;
  float rotation = radians(-90);
 
  // player move
  void move() {
    //forward
    if (movementKeys[0]){
        transx += 5*cos(rotation);
        transy += 5*sin(rotation);
    }
    //back
    if (movementKeys[1]){
        transx -= 5*cos(rotation);
        transy -= 5*sin(rotation);
    }
    //left rotate
    if (movementKeys[2]){
        rotation -= PI/30;
    }
    //right rotate
    if (movementKeys[3]){ 
      rotation += PI/30;
    }
  }
}



class Player extends Ship {
  int x = 0;
  int y = 0;
  void draw() {
  ShipSprite hero = new Hero(400,400);
  hero.show(transx, transy, rotation);
  x = hero.xCoor+transx;
  y = hero.yCoor+transy;
  }
  public int getX(){
    return x;
  }
  public int getY(){
    return y;
  }
  
};

class Enemy1 extends Ship {
  int x = 0;
  int y = 0;
 void draw() {
  ShipSprite enemy1 = new Enemy1Sprite(600,600);
  enemy1.show(transx,transy,rotation);
  x = enemy1.xCoor+transx;
  y = enemy1.yCoor+transy;
 }
  public int getX(){
    return x;
  }
  public int getY(){
    return y;
  }

 void auto(){
     //text (player.getX(), 50, 50);
     //text (player.getY(), 100, 50);
     //text (enemy1.getX(), 50 ,100);
     //text (enemy1.getY(), 100, 100);

 if(player.getX() - enemy1.getX() >= 0 && Math.abs(player.getX() - enemy1.getX()) > 100){
   enemy1.rotation = atan2(player.getY()-enemy1.getY(), player.getX()-enemy1.getX());
transx+=5;
  }
  if(player.getX() - enemy1.getX() <= 0 && Math.abs(player.getX() - enemy1.getX()) > 100){
   enemy1.rotation = atan2(player.getY()-enemy1.getY(), player.getX()-enemy1.getX());
transx-=5;
  }
  if(player.getY() - enemy1.getY() >= 0 && Math.abs(player.getY() - enemy1.getY()) > 100){
   enemy1.rotation = atan2(player.getY()-enemy1.getY(), player.getX()-enemy1.getX());
transy+=5;
  }
  if(player.getY() - enemy1.getY() <= 0 && Math.abs(player.getY() - enemy1.getY()) > 100){
   enemy1.rotation = atan2(player.getY()-enemy1.getY(), player.getX()-enemy1.getX());
transy-=5;
  }
 }
}

// And so on...


// new players
Player player = new Player();
Enemy1 enemy1 = new Enemy1();

void keyPressed() {
  if (keyCode == UP) {player.movementKeys[0] = true;} 
  if (keyCode == DOWN) {player.movementKeys[1] = true;} 
  if (keyCode == LEFT) {player.movementKeys[2] = true;}
  if (keyCode == RIGHT) {player.movementKeys[3] = true;}
}

void keyReleased() {
  if (keyCode == UP) {player.movementKeys[0] = false;} 
  if (keyCode == DOWN) {player.movementKeys[1] = false;} 
  if (keyCode == LEFT) {player.movementKeys[2] = false;}
  if (keyCode == RIGHT) {player.movementKeys[3] = false;}
}
