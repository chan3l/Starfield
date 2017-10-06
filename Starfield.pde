Particle[] bob = new Particle[300];
void setup()
{
  size(800, 800);
  noStroke();
  for (int i =0; i<bob.length; i++)
    bob[i]=new NormalParticle();
  bob[0]=new OddballParticle();
  bob[1]=new JumboParticle();
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
    urX=urY=400;
    urAngle=Math.PI*2*Math.random();
    urSpeed=Math.random()*5;
    
  }
  public void move() {
        urX =urX +Math.cos(urAngle)*urSpeed;
    urY =urY +Math.sin(urAngle)*urSpeed;
  }
  public void show() {
    fill(255,0,0);
    ellipse((float)urX, (float)urY, 10, 10);
  }
}

class JumboParticle extends NormalParticle
{
  public void show() {
    ellipse((float)myX,(float)myY,300,300);
  }
}