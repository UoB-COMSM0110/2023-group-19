class Gun {
  int fireRate; 
  int lastFired = 0;
  ArrayList<Projectile> projectiles = new ArrayList<>();
  
  public Gun(int x) {
    fireRate = x;
  }
  
  public void fire(int x, int y, float rotate) {
    if (fireRate <= (millis() - lastFired)){
      lastFired = millis();
      projectiles.add(new Projectile(x, y, rotate));
    }
  }
  public void updateProjectiles() {
   projectiles.forEach(x -> x.drawProjectile());
  }
}

class Projectile {
  int speed = 10, xLoc, yLoc;
  float directionFired;
  PImage sprite = loadImage("../../resources/weapons/gun.png");
  
  public Projectile(int x, int y, float rotation) {
    xLoc = x;
    yLoc = y;
    directionFired = rotation;
    pushMatrix();
    imageMode(CENTER);
    //rotate(directionFired);
    translate(xLoc,yLoc);  
    image(sprite,0,0);
    popMatrix();
    
  }
  
  public void drawProjectile() {
    xLoc += speed*cos(directionFired);
    yLoc += speed*sin(directionFired);
    pushMatrix();
    imageMode(CENTER);
    translate(xLoc, yLoc);
    rotate(directionFired + radians(90));
    image(sprite,0, 0);
    popMatrix();
  }
  
  private void doesHit(){
   //TODO 
  }
}
