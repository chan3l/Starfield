Particle[] bob = new Particle[500];
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
    if (mousePressed) {
      myX = mouseX;
      myY= mouseY;
    }
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
    urX=urY=(int)(Math.random()*799+1);
    urAngle=Math.PI*2*Math.random();
    urSpeed=Math.random()*3+1;
  }
  public void move() {
    //urX =urX +Math.cos(urAngle)*urSpeed;
    //urY =urY +Math.sin(urAngle)*urSpeed;
    urX = urX+ 5;
  urY = urY +3;
  if(urX>800 || urY>800) {
    urX = urX -3;
    urY=urY-6;
  }
  if(urX<0 || urY<0) {
    urX = urX +1;
    urY=urY +1;
  }
  
  
  }
  public void show() {
    fill((int)(Math.random()*256+1),(int)(Math.random()*256+1),(int)(Math.random()*256+1));
    ellipse((float)urX, (float)urY, 10, 10);
  }
}

class JumboParticle extends NormalParticle
{

  public void show() {
    ellipse((float)myX, (float)myY, 50,50);
    if (mousePressed) {
      myX = mouseX;
      myY= mouseY;
    }
  }
}