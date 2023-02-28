
class Hero {
    private int xCoor, yCoor;//x,y-coorinate 
    private PImage hero;
   
    public Hero(int x, int y) {
      if (hero == null){
            hero = loadImage("../../resources/ships/hero.png");;
        }
        this.xCoor = x;
        this.yCoor = y;
    }
    
    public void show(){
         image(hero,xCoor, yCoor);
    }
}

class Enermy1 {
    private int xCoor, yCoor;//x,y-coorinate 
    private PImage emy1;
   
    public Enermy1(int x, int y) {
      if (emy1 == null){
            emy1 = loadImage("../../resources/ships/enermy1.png");;
        }
        this.xCoor = x;
        this.yCoor = y;
    }
    
    public void show(){
         image(emy1,xCoor, yCoor);
    }
}


class Enermy2 {
    private int xCoor, yCoor;//x,y-coorinate 
    private PImage emy2;
   
    public Enermy2(int x, int y) {
      if (emy2 == null){
            emy2 = loadImage("../../resources/ships/enermy2.png");;
        }
        this.xCoor = x;
        this.yCoor = y;
    }
    
    public void show(){
         image(emy2,xCoor, yCoor);
    }
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
