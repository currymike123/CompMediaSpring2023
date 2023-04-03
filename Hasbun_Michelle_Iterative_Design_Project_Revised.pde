///Make background black with nearly black strokes, make a colorful pattern to contrast
void setup() {
  size(500,500); 
  background(0); 
  stroke(35); // slightly contrast with background
  strokeWeight(5); // make between 3 and 5
  frameRate(3); // keep framerate low - it moves fast
}
void draw() {
  loop();
  int radius = 25; // Radius of each circle
  int spacing = radius * 2; // Spacing between circles
  
  color[] customColors = {
    color(230,13,255), //pink magenta
    color(174,15,255), // magenta purple
    color(109,25,222), // deep purple
    color(72,5,232), // purple blue
    color(20,40,247), // deep blue
    color(20,105,247), // medium blue
    color(31,208,255), // light blue
    color(31,255,189), // blue green
    color(53,237,81), // green
    color(141,237,53) // yellow green
  };
 
  // Loop through the rows and columns
  // trying to get a more flow-y animation than just random stars
  // give it a little rainbow pattern or something
  for (int x = 0; x < width; x += spacing) {
    for (int y = 0; y < height; y += spacing) {
      if (y == 0) { // if in the first row
        int colorIndex = int(random(customColors.length));
        color c = customColors[colorIndex];
        fill(c);
      } else { // if in any other row
        // Get the color of the circle above
        color cAbove = get(x + radius, y - spacing + radius);
        int indexAbove = -1;
        // Loop through the custom colors array to find the index of the color
        for (int i = 0; i < customColors.length; i++) {
          if (cAbove == customColors[i]) {
            indexAbove = i;
            break;
          }
        }
        // Set the color of the current circle to the next color in the array
        int colorIndex = (indexAbove + 1) % customColors.length;
        color c = customColors[colorIndex];
        fill(c);
      }
      
      // Draw the circle at this position
      ellipse(x + radius, y + radius, radius * 2, radius * 2);

      // Draw triangles within the circle
      fill(255);
      int numOfTriangles = 5;
      for (int i = 0; i < numOfTriangles; i++) {
        float angle = TWO_PI / numOfTriangles * i;
        float x1 = x + radius + radius * cos(angle);
        float y1 = y + radius + radius * sin(angle);
        float x2 = x + radius + radius * cos(angle + TWO_PI / numOfTriangles);
        float y2 = y + radius + radius * sin(angle + TWO_PI / numOfTriangles);
        float x3 = x + radius + radius / 2 * cos(angle + TWO_PI / (numOfTriangles * 2)); // multiplying with different numbers changes triangle shape
        float y3 = y + radius + radius / 2 * sin(angle + TWO_PI / (numOfTriangles * 2)); 
        triangle(x1, y1, x2, y2, x3, y3);
      }
    }
  }
}
