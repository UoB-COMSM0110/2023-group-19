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
  void draw() {
  ShipSprite hero = new Hero(400,400);
  hero.show(transx, transy, rotation);
  }
};

class Enemy1 extends Ship {
 void draw() {
  ShipSprite enemy1 = new Enemy1Sprite(600,600);
  enemy1.show(transx,transy,rotation);
  
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
