int j=0;

void setup() {
  size(1024, 720);
  smooth(); //helps to get rid of jagged line on high contrast parts
  background(214, 67, 67);
  noStroke();
}

void draw() {
  for (int j=0; j<700; j+=50) { //creates a bunch of triangles with a gradient
    for (int i=0; i<500; i+=30) {
      fill(0+i, 0+i, 0);
      triangle(100+i, 100+j, 200+i, 100+j, 150+i, 200+j);
    }
  }
  fill(214, 67, 67);
  for (int i=0; i<700; i+=300) { //for loop to repeat rectangle, to remove from structure
    rect(450, 100+i, 150, 250);
  }
  fill(114, 0, 0);
  for (int i=0; i<700; i+=300) { //for loop to repeat a smaller rectangle for shading
    rect(500, 100+i, 100, 250);
  }
}
