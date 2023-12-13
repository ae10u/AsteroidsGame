class Bullet extends Floater
{
    public Bullet(Spaceship Bob){
      myCenterX = bob.getX();
      myColor = 8;
      myCenterY = bob.getY();
      myXspeed = bob.getXspeed();
      myYspeed = bob.getYspeed();
      myPointDirection = bob.shipRot();
      accelerate(6);
    }
    public void move() {
      myCenterX += myXspeed;    
      myCenterY += myYspeed;
      if(myCenterX > width)
      {     
        accelerate(0);    
      }    
      else if (myCenterX<0)
      {     
        accelerate(0);    
      }    
      if(myCenterY > height)
      {    
        accelerate(0);        
      } 
      else if (myCenterY < 0)
      {     
       accelerate(0);    
      }   
  }
    public void show(){
      fill(255,0,0);
      ellipse((float)myCenterX,(float)myCenterY,10,10);
    }
    public double getX(){
      return myCenterX;
    }
    public double getY(){
      return myCenterY;
    }
}
