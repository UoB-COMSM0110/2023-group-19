// define a player
class Player {
  int x=900;// the location of the players
  int y = 500; //put in the middle
  int speed = 5; // player speed
  // player move
  void move(int dir) {
    switch (dir) {
      case 0: // up
        y -= speed;
        break;
      case 1: // down
        y += speed;
        break;
      case 2: // left
        x -= speed;
        break;
      case 3: // right
        x += speed;
        break;
    }
  }
  // simple draw a player
  void draw() {
    Explosion ex = new Explosion(x,y);
  ex.showExplosion();
  //test ship
  Hero hero = new Hero(x+100,y+100);
  hero.show();
  Enermy1 emy1 = new Enermy1(x+50,y+50);
  emy1.show();
  Enermy2 emy2 = new Enermy2(x,y);
  emy2.show();
  Enermy3 emy3 = new Enermy3(x-50,y-50);
  emy3.show();
  Enermy4 emy4 = new Enermy4(x-100,y-100);
  emy4.show(); 
  }
}

// new players
Player player = new Player();

//void setup() {
//  size(1800, 1000); // from the sectorstar
//}

//void draw() {
//  background(128); // I dont know why when I tried to set up the background, either it is very stuck or there are residual shadows on the map.
//  player.draw(); // draw the player
//}

void keyPressed() {
  if (keyCode == UP) { // w
    player.move(0);
  } else if (keyCode == DOWN) { //
    player.move(1);
  } else if (keyCode == LEFT) { //
    player.move(2);
  } else if (keyCode == RIGHT) { //
    player.move(3);
  }
}
