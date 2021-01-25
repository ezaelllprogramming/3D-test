void drawMap() {
  for (int x = 0; x < map.width; x++) {
    for (int y = 0; y < map.height; y++) {
      color c = map.get(x,y);
      if (c == dullBlue) {
        texturedCube(x*gridSize-2000,height-gridSize,y*gridSize-2000,mossyStone,gridSize);
        texturedCube(x*gridSize-2000,height-gridSize*2,y*gridSize-2000,mossyStone,gridSize);
        texturedCube(x*gridSize-2000,height-gridSize*3,y*gridSize-2000,mossyStone,gridSize);
      }
      if (c == black) {
        texturedCube(x*gridSize-2000,height-gridSize,y*gridSize-2000,oakPlanks,gridSize);
        texturedCube(x*gridSize-2000,height-gridSize*2,y*gridSize-2000,oakPlanks,gridSize);
        texturedCube(x*gridSize-2000,height-gridSize*3,y*gridSize-2000,oakPlanks,gridSize);
      }
    }
  }
}

void drawAxis() {
 world.stroke(255,0,0);
 world.strokeWeight(5);
 world.line(0,0,0,0,0,2000);
 world.line(0,0,0,0,2000,0);
 world.line(0,0,0,2000,0,0);
 world.noFill();
 world.rect(0,0,width,height);
}

void drawFloor(int start, int end, int level, int gap) {
  int x = start;
  int z = start;
  stroke(0);
  strokeWeight(1);
  while(z < end) {
    texturedCube(x,level,z,oakPlanks,gap);
    x = x + gap;
    if (x >= end) {
     x = start;
     z = z + gap;
    }
  }
}
