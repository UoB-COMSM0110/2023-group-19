// define a player
class Ship {
  public boolean[] movementKeys = new boolean[4];
  public boolean[] weaponFiring = new boolean[2];
  int speed = 5, transy = 0, transx = 0;
  float rotation = radians(-90);
  
  Gun gun = new Gun(1000);
}

class Player extends Ship {
  public boolean[] movementKeys = new boolean[4];
  int x = 0;
  int y = 0;
  int speed = 5;
  
  
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
  void move() {
    //forward
    gun.updateProjectiles();
    if (movementKeys[0]){
        transx += speed*cos(rotation);
        transy += speed*sin(rotation);
    }
    //back
    if (movementKeys[1]){
        transx -= speed*cos(rotation);
        transy -= speed*sin(rotation);
    }
    //left rotate
    if (movementKeys[2]){
        rotation -= PI/30;
    }
    //right rotate
    if (movementKeys[3]){ 
      rotation += PI/30;
    }
    if (weaponFiring[0]){
     gun.fire(transx+400, transy+400 , rotation);  
    }
  }
  
};

class Enemy1 extends Ship {
  int speed = 2;
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
//Stop when Enemy 2 is close to Enemy 1, maybe 50
 if(player.getX() - enemy1.getX() >= 0 && Math.abs(player.getX() - enemy1.getX()) > 100){
   enemy1.rotation = atan2(player.getY()-enemy1.getY(), player.getX()-enemy1.getX());
transx+=speed;
  }
  if(player.getX() - enemy1.getX() <= 0 && Math.abs(player.getX() - enemy1.getX()) > 100){
   enemy1.rotation = atan2(player.getY()-enemy1.getY(), player.getX()-enemy1.getX());
transx-=speed;
  }
  if(player.getY() - enemy1.getY() >= 0 && Math.abs(player.getY() - enemy1.getY()) > 100){
   enemy1.rotation = atan2(player.getY()-enemy1.getY(), player.getX()-enemy1.getX());
transy+=speed;
  }
  if(player.getY() - enemy1.getY() <= 0 && Math.abs(player.getY() - enemy1.getY()) > 100){
   enemy1.rotation = atan2(player.getY()-enemy1.getY(), player.getX()-enemy1.getX());
transy-=speed;
  }
 }
}

// And so on...
class Enemy2 extends Ship {
  int speed = 2;
  int x = 0;
  int y = 0;
 void draw() {
  ShipSprite enemy2 = new Enemy2Sprite(10,10);
  enemy2.show(transx,transy,rotation);
  x = enemy2.xCoor+transx;
  y = enemy2.yCoor+transy;
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
     //text (enemy2.getX(), 50 ,100);
     //text (enemy2.getY(), 100, 100);

 if(player.getX() - enemy2.getX() >= 0 && Math.abs(player.getX() - enemy2.getX()) > 100){
   enemy2.rotation = atan2(player.getY()-enemy2.getY(), player.getX()-enemy2.getX());
transx+=speed;
  }
  if(player.getX() - enemy2.getX() <= 0 && Math.abs(player.getX() - enemy2.getX()) > 100){
   enemy2.rotation = atan2(player.getY()-enemy2.getY(), player.getX()-enemy2.getX());
transx-=speed;
  }
  if(player.getY() - enemy2.getY() >= 0 && Math.abs(player.getY() - enemy2.getY()) > 100){
   enemy2.rotation = atan2(player.getY()-enemy2.getY(), player.getX()-enemy2.getX());
transy+=speed;
  }
  if(player.getY() - enemy2.getY() <= 0 && Math.abs(player.getY() - enemy2.getY()) > 100){
   enemy2.rotation = atan2(player.getY()-enemy2.getY(), player.getX()-enemy2.getX());
transy-=speed;
  }
 }
}





// new players
Player player = new Player();
Enemy1 enemy1 = new Enemy1();
Enemy2 enemy2 = new Enemy2();

void keyPressed() {
  if (keyCode == UP) {player.movementKeys[0] = true;} 
  if (keyCode == DOWN) {player.movementKeys[1] = true;} 
  if (keyCode == LEFT) {player.movementKeys[2] = true;}
  if (keyCode == RIGHT) {player.movementKeys[3] = true;}
  if (key == ' ') {player.weaponFiring[0] = true;}
}

void keyReleased() {
  if (keyCode == UP) {player.movementKeys[0] = false;} 
  if (keyCode == DOWN) {player.movementKeys[1] = false;} 
  if (keyCode == LEFT) {player.movementKeys[2] = false;}
  if (keyCode == RIGHT) {player.movementKeys[3] = false;}
  if (key == ' ') {player.weaponFiring[0] = false;}
}
