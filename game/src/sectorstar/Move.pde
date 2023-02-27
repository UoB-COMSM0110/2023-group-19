
class Move {
  
  void movePlayer(){
  if (keyPressed){
    if(key == 'a'){
      playerX -= 5;
    } else if (key == 'd'){
      playerX += 5;
    } else if(key == 'w'){
    playerY -= 5;
    } else if (key == 's'){
      playerY += 5;
    }
  }
 }
}
