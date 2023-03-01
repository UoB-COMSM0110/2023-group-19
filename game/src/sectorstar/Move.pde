// define a player
class Ship {
  int speed = 2; // player speed
  int transy = 0;
  int transx = 0;
  float rotation = radians(-90);
  // player move
  void move(int dir) {
    switch (dir) {
      case 0: // up
        transx += 5*cos(rotation);
        transy += 5*sin(rotation);
        break;
      case 1: // down
        transx -= 5*cos(rotation);
        transy -= 5*sin(rotation);
        break;
      case 2: // left
        rotation -= PI/30;
        break;
      case 3: // right
        rotation += PI/30;
        break;
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
  if (keyCode == UP) { // w
    player.move(0);
  } 
  if (keyCode == DOWN) { //
    player.move(1);
  } 
  if (keyCode == LEFT) { //
    player.move(2);
  }if (keyCode == RIGHT) { //
    player.move(3);
  }
  
}
