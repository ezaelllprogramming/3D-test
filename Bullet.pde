class Bullet extends GameObject {
 
  PVector dir;
  float speed;
  int timer;
  
  Bullet() {
   super(eyex,eyey,eyez,10);
   speed = 50;
   float vx = cos(leftRightAngle);
   float vy = tan(upDownAngle);
   float vz = sin(leftRightAngle);
   dir = new PVector(vx,vy,vz);
   dir.setMag(speed);
   timer = 100;
  }
  
  void act() {
    int hitx = int(loc.x+2000) / gridSize;
    int hity = int(loc.z+2000) / gridSize;
    if (map.get(hitx,hity) == white) {
      loc.add(dir);
    } else {
      lives = 0;
      for (int i = 0; i < 5; i++) {
        //objects.add(new Particle (loc));
      }
    }
    //super.act();
    //dieoffScreen();
    //timer--;
    //if (timer == 0) {
    //  lives = 0;
    //}
  }
    void show() {
    pushMatrix();
    strokeWeight(3);
    stroke(2);
    fill(255, 0, 0);
    //translate(location.x, location.y);
    //rotate(velocity.heading());
    ellipse(0, 0, size*2, size/2);
    popMatrix();
  }
}
