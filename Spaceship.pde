class Spaceship extends Floater  
{   
    public Spaceship()
    { 
      corners = 8;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -20;
      yCorners[0] = 5;
      xCorners[1] = 0;
      yCorners[1] = 5;
      xCorners[2] = 0;
      yCorners[2] = 5;
      xCorners[3] = 0;
      yCorners[3] = 15;
      xCorners[4] = 10;
      yCorners[4] = 0;
      xCorners[5] = 0;
      yCorners[5] = -15;
      xCorners[6] = 0;
      yCorners[6] = -5;
      xCorners[7] = -20;
      yCorners[7] = -5;
      myColor = 255;
      myCenterX = 300;
      myCenterY = 300;
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
}