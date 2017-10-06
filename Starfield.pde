NormalParticle[] aBunch; 
JumboParticle []bob;
//now it can hold both Normal and Oddball
void setup()

 {
  size(500,500);
  aBunch = new NormalParticle[200];
  bob = new JumboParticle[50];
  for (int i=0; i<aBunch.length;i++)
{
 aBunch[i] =new NormalParticle();
}
for(int i =0;i<bob.length;i++)
{
  bob[i] = new JumboParticle[50];
}
 }
//aBunch[0] = new Oddball();
//aBunch[1] = new Jumbo();

void draw()
{
   background(0);
  for (int i=0;i<aBunch.length;i++)
  {
    aBunch[i].move();
    aBunch[i].show();
  }
  for (int i = 0;i<bob.length;i++)
  bob[i].show();
  bob[i].move();
}


class NormalParticle
{
  int Color;
  double Angle,Speed,myX,myY;
  NormalParticle()
  {
    Color = 255;
    Speed = 10;
    Angle = (Math.random()*100);
    myX = 250;
    myY = 250;
  }
   void show()
  {
    fill(255,255,102);
    ellipse(250,250,30,30);
    fill(Color,Color,Color);
    ellipse((int)myX,(int)myY, 10,10);
  }
void move()
  {
    myX = myX + Math.cos(Angle)*Speed;
  myY = myY + Math.sin(Angle) *Speed;
  if(myX>500 || myX<0 ||myY > 500|| myY <0)
  {
    myX =250;
    myY=250;
  }
  } 
/*interface Particle
{
  public void show();
  public void move();
}  */
class JumboParticle 
{  
  int Color;
  double Angle,Speed,myX,myY;
 JumboParticle()
  {
    Color = 255;
    Speed = 10;
    Angle = (Math.random()*500);
    myX = 250;
    myY = 250;
  }
  void show()
  {
    fill(255,255,102);
    ellipse(250,250,30,30);
    fill(238,130,238);
    ellipse((int)myX,(int)myY, 20,20);
  }
  void move()
  {
    myX = myX + Math.cos(Angle)*Speed;
  myY = myY + Math.sin(Angle) *Speed;
  if(myX>500 || myX<0 ||myY > 500|| myY <0)
  {
    myX =250;
    myY=250;
  }

  }

}
}
