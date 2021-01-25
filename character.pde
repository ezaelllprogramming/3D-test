void move() {
  pushMatrix();
 
  //ambientLight(128, 128, 128);
  //directionalLight(128, 128, 128, 0, 0, -1);
  //lightFalloff(1, 0, 0);
  //lightSpecular(0, 0, 0);
 
  translate(focusx,focusy,focusz);
  fill(200);
  noStroke();
  //sphere(10);
  popMatrix();
 
  if (akey && canMoveLeft()) {
    eyex -= cos(leftRightAngle + radians(90))*20;
    eyez -= sin(leftRightAngle + radians(90))*20;
  }
  if (dkey && canMoveRight()) {
    eyex += cos(leftRightAngle + radians(90))*20;
    eyez += sin(leftRightAngle + radians(90))*20;
  }
  if (wkey && canMoveForward()) {
    eyex += cos(leftRightAngle)*20;
    eyez += sin(leftRightAngle)*20;
  }
  if (skey && canMoveBackwards()) {
    eyex -= cos(leftRightAngle)*20;
    eyez -= sin(leftRightAngle)*20;
  }
 
  focusx = eyex + cos(leftRightAngle)*100;
  focusy = eyey + tan(upDownAngle)*100;
  focusz = eyez + sin(leftRightAngle)*100;
 
  leftRightAngle = leftRightAngle + (mouseX - pmouseX)*0.01;
  upDownAngle = upDownAngle + (mouseY - pmouseY)*0.01;
 
  if(upDownAngle > PI/2.5) upDownAngle = PI/2.5;
  if(upDownAngle < -PI/2.5) upDownAngle = -PI/2.5;
 
  if (mouseX > width-2) Geraldo.mouseMove(3,mouseY);
  if (mouseX < 2) Geraldo.mouseMove(width-3, mouseY);
}

boolean canMoveForward() {
 float fwdx, fwdy, fwdz;
 float leftx, lefty, leftz;
 float rightx,righty,rightz;
 int mapx, mapy;
 
 fwdx = eyex + cos(leftRightAngle)*200;
 fwdy = eyey;
 fwdz = eyez + sin(leftRightAngle)*200;
 
 mapx = int(fwdx+2000) / gridSize;
 mapy = int(fwdz+2000) / gridSize;
 
 if (map.get(mapx,mapy) == white) {
  return true; 
 }else{
   return false;
 }
}

boolean canMoveLeft() {
  float lx, ly, lz;
 int mapx, mapy;
 
 lx = eyex + sin(leftRightAngle)*200;
 ly = eyey;
 lz = eyez;
 
 mapx = int(lx+2000) / gridSize;
 mapy = int(lz+2000) / gridSize;
 
 if (map.get(mapx,mapy) == white) {
  return true; 
 }else{
   return false;
 }
}

boolean canMoveRight() {
  float rx, ry, rz;
 int mapx, mapy;
 
 rx = eyex - sin(leftRightAngle)*200;
 ry = eyey;
 rz = eyez;
 
 mapx = int(rx+2000) / gridSize;
 mapy = int(rz+2000) / gridSize;
 
 if (map.get(mapx,mapy) == white) {
  return true; 
 }else{
   return false;
 }
}

boolean canMoveBackwards() {
  float bwdx, bwdy, bwdz;
 int mapx, mapy;
 
 bwdx = eyex - cos(leftRightAngle)*200;
 bwdy = eyey;
 bwdz = eyez - sin(leftRightAngle)*200;
 
 mapx = int(bwdx+2000) / gridSize;
 mapy = int(bwdz+2000) / gridSize;
 
 if (map.get(mapx,mapy) == white) {
  return true; 
 }else{
   return false;
 }
}
