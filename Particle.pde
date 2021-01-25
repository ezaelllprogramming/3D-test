class Particle extends GameObject {
  int t;

  Particle() {
    //location = myShip.location.copy();
    //velocity = myShip.direction.copy();
    //velocity.rotate(PI + random(-0.5, 0.5));
    //velocity.setMag(5);
    size = 1;
    lives = 1;
    t = 255;
  }

  void show() {
    strokeWeight(3);
    stroke(random(0, 255), random(0, 100), 0, t);
    fill(random(0, 255), random(0, 100), 0, t);
    t = t - 10;
    //rect(location.x, location.y, size, size);
  }

  void act() {
    super.act();
    //dieoffScreen();
  }
}
