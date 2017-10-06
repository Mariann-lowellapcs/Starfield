Particle[] star;

void setup()
{
  background(0);
  size(500, 500);
  star = new Particle[100];
  for(int i = 0; i<star.length; i ++)
  {

  star[i] = new NormalParticle();
  }//your code here
  star[0] = new OddballParticle();
  star[1] = new JumboParticle();
}
void draw()
{
  background(0);
  for(int i = 0; i<star.length; i ++)
  {
    star[i].show();
    star[i].move();
    // stars[298].show();
    // stars[298].move();
  } 
  //your code here
}



class NormalParticle implements Particle
{
  int Color;
  double myX, myY, Angle, Speed, size; 
  NormalParticle()
  {
    Angle = Math.random()*60;
    Speed = 7;
    myX = 250;
    myY = 250; 
    size = 20;
   Color= 255;
  }
 
public void move()
  {
  myX += Math.cos(Angle)*Speed;
  myY  += Math.sin(Angle) *Speed;
  if(myX>500 || myX<0 ||myY > 500|| myY <0)
  {
    myX =250;
    myY=250;

  }
  }
  public void show()
  {
   fill(255,255,102);
    ellipse(250,250,30,30);
    fill(Color,Color,Color);
    ellipse((int)myX,(int)myY,20,20);
  }
}

interface Particle
{
  public void show();
  public void move(); 
}

class OddballParticle implements Particle //uses an interface
{
  double myX, myY, Angle, Speed, Size; 
  OddballParticle()
  {
    Angle = 2 * Math.PI * Math.random();
    Speed = 20;
    myX = 300;
    myY = 300; 
    Size = 2;
  }

  public void move()
  {
    myX = myX + Math.cos(Angle)*Speed;
  myY = myY + Math.sin(Angle) *Speed;
  if(myX>500 || myX<0 ||myY > 500|| myY <0)
  {
    myX =250;
    myY=250;
  }
  }

  public void show()
  {
    fill(255,255,102);
    ellipse(250,250,30,30);
    fill(238,130,238);
    rect((int)myX,(int)myY, 20,20);
  }
}

class JumboParticle extends NormalParticle //uses inheritance
{
  public void show()
  {
   fill(255,255,102);
    ellipse(250,250,30,30);
    fill(238,130,238);
    ellipse((int)myX,(int)myY, 50,50);
  }
}
