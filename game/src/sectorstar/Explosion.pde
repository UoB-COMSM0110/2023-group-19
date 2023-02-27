public class Explosion {
    private double xCoor,yCoor;//x,y-coorinate
    private int radius;//How big the explosion is
    private  PImage explosion = new PImage;
    public Explosion(double x,double y, int r) {
        if (PImage == null){
            explosion = loadImage("../../resources/explosion/explosionBoom.png")
        }
        this.xCoor = x;
        this.yCoor = y;
        this.radius = r;
    }
}
