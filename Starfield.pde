NormalParticle[] bob = new NormalParticle[100];
void setup()
{
  size(800, 800);
  noStroke();
  for (int i =0; i<bob.length; i++)
    bob[i]=new NormalParticle();
}
void draw()
{
  background(0);
  for (int i=0; i<bob.length; i++) {
    bob[i].move();
    bob[i].show();
  }
}
class NormalParticle implements Particle
{
  double myX, myY, myAngle, mySpeed;
  NormalParticle() {
    myX = 400;
    myY = 400;
    myAngle=Math.PI*2*Math.random();
    mySpeed=Math.random()*5;
  }
  public void move() {
    myX =myX +Math.cos(myAngle)*mySpeed;
    myY =myY +Math.sin(myAngle)*mySpeed;
  }
  public void show() {
    fill(255);
    ellipse((float)myX, (float)myY, 10, 10);
  }
}
interface Particle
{
  public void show();
  public void move();
}
class OddballParticle implements Particle
{
  double urX, urY, urAngle, urSpeed;
  OddballParticle() {
    
  }
  public void move() {
    
  }
  public void show() {
    
  }
}
class JumboParticle //uses inheritance
{
  //your code here
}