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
    for(int x =0; x<100; x++){
      ellipse((float)myX,(float)myY,100,100);
    }
  }
  public void move() {
    myX=400;
    for(int x= 0; x<800;x++){
    myX=myX+1;
    myY=myY+1;
  }
    if (mousePressed) {
      myX = mouseX;
      myY= mouseY;
    }
    if(myX>800)
    myX=myX-60;
    if(myX<0)
    myX=myX+1;
    if(myY>800)
    myY=myY-5;
    if(myY<0)
    myY=myY+20;
  }
}