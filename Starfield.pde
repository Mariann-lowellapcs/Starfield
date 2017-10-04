=/*interface Particle
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
*/
