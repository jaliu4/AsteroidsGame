class Asteroid extends Floater
{
  private int rotationSpeed;
  public Asteroid()
  {
    rotationSpeed = (int)(Math.random()*11 - 5);
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -15;
    yCorners[0] = -9;
    xCorners[1] = 0;
    yCorners[1] = -18;
    xCorners[2] = 6;
    yCorners[2] = -9;
    xCorners[3] = 10;
    yCorners[3] = 4;
    xCorners[4] = 4;
    yCorners[4] = 4;
    xCorners[5] = -4;
    yCorners[5] = 8;
    myColor = 255;
    myCenterX = Math.random()*600;
    myCenterY = Math.random()*600;
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 360;   
  }

public void setX(int x)
    {
      myCenterX = x;
    }
    public int getX()
    {
      return (int)myCenterX;
    }
    public void setY(int y)
    {
      myCenterY = y;
    }
    public int getY()
    {
      return (int)myCenterY;
    }
    public void setDirectionX(double x)
    {
      myDirectionX = x;
    }
    public double getDirectionX()
    {
      return myDirectionX;
    }
    public void setDirectionY(double y)
    {
      myDirectionY = y;
    }
    public double getDirectionY()
    {
      return myDirectionY;
    }
    public void setPointDirection(int degrees)
    {
      myPointDirection = degrees;
    }
    public double getPointDirection()
    {
      return myPointDirection;
    } 
public void move()
{
   myCenterX = myCenterX + Math.random()*5 - 2;
   myCenterY = myCenterY + Math.random()*5 - 2;
   turn(rotationSpeed);
   super.move();
}
}