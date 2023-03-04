 class Healthbars{
  private PImage healthbar0;
  private PImage healthbar1;
   
  public Healthbars() {
    healthbar0 = loadImage("../../resources/healthbars/healthbar0.png");
    healthbar1 = loadImage("../../resources/healthbars/healthbar1.png");
  }
  
  void draw(){
    image(healthbar0, 160, 880); 
  }
   
}
