NormalParticle [] bob;
void setup(){
  noStroke();
  size(700,700);
  background(255);
  bob = new NormalParticle[1000];
  for(int i = 0; i < bob.length; i++){
   bob[i] = new NormalParticle();
  }
}
void draw(){
  for(int i = 0; i < bob.length; i++){
  bob[i].show();
  bob[i].move();
  }
}
class NormalParticle{
  double myX, myY, mySpeed, myAngle;
  int myColor;
  NormalParticle(){
    myColor = color((int)(Math.random()*255) + 1,(int)(Math.random()*255) + 1,(int)(Math.random()*255) + 1);
    mySpeed = (double)(Math.random()*11);
    myAngle = (double)(Math.random()*2)*Math.PI;
    myX = 350;
    myY = 350;
  }
  void move(){
    myX = myX + (Math.cos(myAngle)*mySpeed);
    myY = myY + (Math.sin(myAngle)*mySpeed);
  }
  void show(){
    fill(myColor);
    ellipse((float)myX,(float)myY,8,8);
  }
}
interface Particle{
  public void show();
  public void move();
}
class OddballParticle{

}
class JumboParticle{

}
