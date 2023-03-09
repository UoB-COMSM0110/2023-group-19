class ShipSprite {
    protected int xCoor, yCoor;//x,y-coorinate 
    protected PImage sprite;
  
   
    public void show(int transx, int transy, float rotation){
         pushMatrix();
         imageMode(CENTER);
         translate(xCoor + transx, yCoor + transy);
         rotate(rotation+PI/2);
         image(sprite,0, 0);
         popMatrix();
    }
}

class Hero extends ShipSprite {
    public Hero(int x, int y) {
      if (sprite == null){
            sprite = loadImage("../../resources/ships/hero.png");;
        }
        this.xCoor = x;
        this.yCoor = y;
    }
}

class Enemy1Sprite extends ShipSprite {
    
    public Enemy1Sprite(int x, int y) {
      if (sprite == null){
            sprite = loadImage("../../resources/ships/enermy1.png");;
        }
        this.xCoor = x;
        this.yCoor = y;
    }
    // public int getxCoor(){
    // return xCoor; 
    //}
}

//And so on...
class Enemy2Sprite extends ShipSprite {
    
    public Enemy2Sprite(int x, int y) {
      if (sprite == null){
            sprite = loadImage("../../resources/ships/enermy2.png");;
        }
        this.xCoor = x;
        this.yCoor = y;
    }
    // public int getxCoor(){
    // return xCoor; 
    //}
}



class Enermy3 {
    private int xCoor, yCoor;//x,y-coorinate 
    private PImage emy3;
   
    public Enermy3(int x, int y) {
      if (emy3 == null){
            emy3 = loadImage("../../resources/ships/enermy3.png");;
        }
        this.xCoor = x;
        this.yCoor = y;
    }
    
    public void show(){
         image(emy3,xCoor, yCoor);
    }
}

class Enermy4 {
    private int xCoor, yCoor;//x,y-coorinate 
    private PImage emy4;
   
    public Enermy4(int x, int y) {
      if (emy4 == null){
            emy4 = loadImage("../../resources/ships/enermy4.png");;
        }
        this.xCoor = x;
        this.yCoor = y;
    }
    
    public void show(){
         image(emy4,xCoor, yCoor);
    }
}
