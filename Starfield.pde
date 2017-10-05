NormalParticle[] aBunch; //now it can hold both Normal and Oddball
void setup()

 {
  size(500,500);
  aBunch =new NormalParticle[500];
for (int i=0; i<aBunch.length;i++)
  aBunch[i] =new NormalParticle();
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
}


class NormalParticle
{
  int Color,myX,myY;
  double Angle, Speed;
  NormalParticle()
  {
    Color = ((int)(Math.random()*365));
    Speed = 2;
    Angle = 100;
    myX = 250;
    myY = 250;
  }
  public void show()
  {
    ellipse(myX, myY, 10,10);
  }
  public void move()
  {
    myX += Speed * 2;
  myY += Speed *2;
  
  } 
}  
