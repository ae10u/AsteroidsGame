//your variable declarations here
Spaceship bob = new Spaceship();
Asteroid chad = new Asteroid();
ArrayList <Bullet> shots = new ArrayList<Bullet>();
boolean up = false;
boolean down = false;
boolean left = false;
boolean right = false;
Star [] stars = new Star [150];
ArrayList <Asteroid> Rocks = new ArrayList<Asteroid>();

public void setup() 
{
  size(500, 500);
  background(0);
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  for (int i = 0; i < 20; i++) {
    Rocks.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  bob.move();
  bob.show();
  chad.move();
  chad.show();
  for (int i = 0; i < shots.size(); i++) {
    shots.get(i).move();
    shots.get(i).show();
  }
  for (int i = 0; i < Rocks.size(); i++) {
    Rocks.get(i).move();
    Rocks.get(i).show();
    float d = dist((float)bob.getX(), (float)bob.getY(), (float) Rocks.get(i).getX(), (float) Rocks.get(i).getY());
    if (d < 10) {
      Rocks.remove(i);
      break;
    }
    for (int j = 0; j < shots.size(); j++) {
      float g = dist((float)shots.get(j).getX(), (float)shots.get(j).getY(), (float) Rocks.get(i).getX(), (float) Rocks.get(i).getY());
      if (g < 10) {
        Rocks.remove(i);
        shots.remove(j);
        break;
      }
    }
  }
  for (int i = 0; i < stars.length; i++) {
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
  if (key == 'j')
    shots.add(new Bullet(bob));
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
