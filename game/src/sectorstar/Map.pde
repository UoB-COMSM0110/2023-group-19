class Map {
  final static int totalBackgrounds = 3;
  private PImage[] background = new PImage [totalBackgrounds];
  
  public Map(){
    for (int i = 0; i < totalBackgrounds; i++){
      background[i] = loadImage("../../resources/backgrounds/back"+i+".jpeg");
      background[i].resize(1800,1000);
    }
  }
}
