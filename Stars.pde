class Stars //note that this class does NOT extend Floater
{
  private double myX, myY;
  Stars()
  {
    myX = (int)(Math.random()*800);
    myY = (int)(Math.random()*800);
  }
  public void show()
  {
    fill(255);
    ellipse((float)myX,(float)myY,2,2);
  }
}