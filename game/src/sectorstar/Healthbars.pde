class Healthbars{
  private PImage healthbar0;
   
  public void Healthbars() {
    healthbar0 = loadImage("../../resources/healthbars/healthbar0.png");
  }
  
  void draw(){
    image(healthbar0, 40, 920); 
  }
   
}
