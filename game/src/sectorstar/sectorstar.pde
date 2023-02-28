
void setup(){
  //test backgrand 
  size(1800,1000);
  frameRate(30);
   Map map = new Map();
   background(map.background[0]);

}
void draw(){
  //test explosion
  Explosion ex = new Explosion(900,500);
  ex.showExplosion();
  //test ship
  Hero hero = new Hero(900,900);
  hero.show();
  Enermy1 emy1 = new Enermy1(100,100);
  emy1.show();
  Enermy2 emy2 = new Enermy2(200,100);
  emy2.show();
  Enermy3 emy3 = new Enermy3(300,100);
  emy3.show();
  Enermy4 emy4 = new Enermy4(400,100);
  emy4.show();

}
