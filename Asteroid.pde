class Asteroid extends Floater
{
  protected double rotSpeed;
  public Asteroid() {
    rotSpeed = (int)(Math.random()*5)+2;
    corners = 7;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 6;
    yCorners[0] = 7;
    xCorners[1] = 8;
    yCorners[1] = 3;
    xCorners[2] = 7;
    yCorners[2] = -2;
    xCorners[3] = 5;
    yCorners[3] = -5;
    xCorners[4] = -4;
    yCorners[4] = -4;
    xCorners[5] = -5;
    yCorners[5] = 0;
    xCorners[6] = -2;
    yCorners[6] = 6;
    myColor = 128;
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myXspeed = (int)(Math.random()*3)-1; 
    myYspeed = (int)(Math.random()*3)-1;
    myPointDirection = 0;
  }
  public void move()
  {
   turn(rotSpeed);
   super.move();
  }
  public double getX()
  {
    return myCenterX;
  }
  public double getY()
  {
    return myCenterY;
  }
}
