//your variable declarations here
Spaceship bob = new Spaceship();
boolean up = false;
boolean down = false;
boolean left = false;
boolean right = false;
Star [] stars = new Star [150];
public void setup() 
{
  size(500, 500);
  background(0);
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  bob.move();
  bob.show();
  for(int i = 0; i < stars.length; i++){
    stars[i].show();
  }
  if (up==true) {
    bob.accelerate(0.1);
  }
  if (left==true) {
    bob.turn(-5);
  }
  if (right==true) {
    bob.turn(5);
  }
  if (down==true) {
    bob.accelerate(-0.1);
  }
}

public void keyPressed() {
  if (key == 'h') {
    bob.hyperSpace();
  }
  if (key == 'w') {
    up = true;
  }
  if (key == 'd') {
    right = true;
  }
  if (key == 'a') {
    left = true;
  }
  if (key == 's') {
    down = true;
  }
}

public void keyReleased() {
  if (key == 'w') {
    up = false;
  }
  if (key == 'd') {
    right = false;
  }
  if (key == 'a') {
    left = false;
  }
  if (key == 's') {
    down = false;
  }
}
