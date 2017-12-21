Spaceship sagiri = new Spaceship();
Stars[] glitter = new Stars[100];
//Asteroid[] megumi = new Asteroid[10];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
ArrayList <Bullets> pewpew = new ArrayList <Bullets>();


public void setup() 
{
  background(0);
  size(600,600);
  for(int y = 0; y < glitter.length; y = y + 1)
  {
    glitter[y] = new Stars();
  }
  //for(int i = 0; i < megumi.length; i = i + 1)
  //{
    //megumi[i] = new Asteroid();
  //}
  for(int a = 0; a < 10; a++)
  {
    rocks.add(a, new Asteroid());
  }
  
}
public void draw() 
{
  background(0);
  sagiri.show();
  sagiri.move();
  for(int y = 0; y < glitter.length; y = y + 1)
  {
    glitter[y].show();
  }
  //for(int i = 0; i < megumi.length; i = i + 1)
  //{
    //megumi[i].show();
    //megumi[i].move();
  //}
  for(int i = 0; i < rocks.size(); i++)
  {
    rocks.get(i).show();
    rocks.get(i).move();
  }
  for(int i = 0; i < rocks.size(); i++)
  {
    float d = dist(sagiri.getX(), sagiri.getY(), rocks.get(i).getX(), rocks.get(i).getY());
    if(d < 17)
    {
      rocks.remove(i);
    }
  }
  

}

public void keyPressed()
{ 
   if(key == 'r')
   {
     sagiri.setDirectionX(0);
     sagiri.setDirectionY(0);
     sagiri.setPointDirection((int)(Math.random()*359 + 1));
     sagiri.setX((int)(Math.random()*600));
     sagiri.setY((int)(Math.random()*600)); 
   }
   if(key == 'w')
   {
     sagiri.accelerate(.5);
   }
   if(key == 's')
   {
     sagiri.accelerate(-.5);
   }
   if(key == 'a')
   {
     sagiri.turn(-10);
   }
   if(key == 'd')
   {
     sagiri.turn(10);
   }
   if(key == 'f')
   {
     sagiri.setDirectionX(0);
     sagiri.setDirectionY(0);
   }
   

} 