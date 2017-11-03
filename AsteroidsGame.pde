Spaceship sagiri = new Spaceship();
Stars[] glitter = new Stars[100];
public void setup() 
{
  background(0);
  size(600,600);
  for(int y = 0; y < 100; y = y + 1)
  {
    glitter[y] = new Stars();
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
}

public void keyTyped()
{ 
   if(key == 'r')
   {
     sagiri.setDirectionX(0);
     sagiri.setDirectionX(0);
     sagiri.setPointDirection((int)(Math.random()*359 + 1));
     sagiri.setX((int)(Math.random()*600));
     sagiri.setY((int)(Math.random()*600)); 
   }
   if(key == 'w')
   {
     sagiri.accelerate(1);
   }
   if(key == 's')
   {
     sagiri.accelerate(-1);
   }
   if(key == 'a')
   {
     sagiri.turn(-20);
   }
   if(key == 'd')
   {
     sagiri.turn(20);
   }
   if(key == 'f')
   {
     sagiri.setDirectionX(0);
     sagiri.setDirectionY(0);
   }
} 