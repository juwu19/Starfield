Particle [] bob;
void setup(){
  size(700,700);
  background(255);
  bob = new NormalParticle[1000];
  for(int i = 0; i < bob.length; i++){
   bob[i] = new NormalParticle();
  }
   bob[1] = new JumboParticle();
}
void draw(){
  for(int i = 0; i < bob.length; i++){
  bob[i].show();
  bob[i].move();
  }
}
class NormalParticle implements Particle{
  double myX, myY, mySpeed, myAngle;
  int myColor;
  NormalParticle(){
    myColor = color((int)(Math.random()*255) + 1,(int)(Math.random()*255) + 1,(int)(Math.random()*255) + 1);
    mySpeed = (double)(Math.random()*11);
    myAngle = (double)(Math.random()*2)*Math.PI;
    myX = 350;
    myY = 350;
  }
  public void move(){
    myX = myX + (Math.cos(myAngle)*mySpeed);
    myY = myY + (Math.sin(myAngle)*mySpeed);
  }
  public void show(){
    fill(myColor);
    noStroke();
    ellipse((float)myX,(float)myY,8,8);
  }
}
interface Particle{
  public void show();
  public void move();
}
class OddballParticle implements Particle{
  int myX, myY, myColor;
  OddballParticle(){
    myColor = color(0,0,0);
    myX = 200;
    myY = 250;
  }
  public void move(){
    myX = myX + ((int)(Math.random()*6)-5);
    myY = myY + ((int)(Math.random()*6)-5);
  }
  public void show(){
    fill(myColor);
    noStroke();
    rect((float)myX,(float)myY,30,30);
  }

}
class JumboParticle extends NormalParticle{
    public void show(){
    fill(myColor);
    noStroke();
    ellipse((float)myX,(float)myY,50,50);
  }
}
