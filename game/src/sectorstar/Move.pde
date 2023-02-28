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
    fill(255, 0, 0); // set to red
    ellipse(x, y, 50, 50); // Set to circle
  }
}

// new players
Player player = new Player();

void setup() {
  size(1800, 1000); // from the sectorstar
}

void draw() {
  background(128); // I dont know why when I tried to set up the background, either it is very stuck or there are residual shadows on the map.
  player.draw(); // draw the player
}

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
