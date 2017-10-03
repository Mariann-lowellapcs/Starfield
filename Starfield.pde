Particle[] aBunch = new Particle[500]; //now it can hold both Normal and Oddball
void setup()

 {
  size(500,500);
for (int i=0; i<aBunch.length;i++)
aBunch[i] =new Normal();
}
aBunch[0] = new Oddball();
aBunch[1] = new Jumbo();

}
void draw()
{
   background(0);
  for (int i=0;i<aBunch.length;i++)
  {
    aBunch[i] = new 

}
class NormalParticle
{
  int Color;
  double Angle, Speed, myX, myY;
  NormalParticle()
  {
    Color = ((int)(Math.random()*365));
    Speed = 0;
    Angle = 100;
    
    
}
interface Particle
{
void show();
  void move();
}

class Oddball implements Particle
int myX,myY;
Oddball()
{
  myX=250;
  myY=50;
}
public void show()
{
 rect(myX,myY,30,30);
}
public void move()
{
  myX += mySpeed * Math.cos(myDir);
  myY += mySpeed * Math.sin(myDir);
}

class JumboParticle //uses inheritance
{
 
  public void show()
  {
    fill(myColor);
  ellipse(50,50,50,50);
  }
}
