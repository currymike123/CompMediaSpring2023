/*
I drew inspiration from Sol Lewitt. I originally planned on doing something like this tessellation wall painting.
http://www.lewittcollection.org/wp-content/uploads/2017/03/WD_565_Salone_Dei_Carmuccini_Museo_Di_Capodimonte_1995_full-e1490574022901CP-1.jpg

However, drawing that in only primitives was extremely tedious and wasn't very fulfilling so I moved to a simpler more vibrant piece. I eventually settled on this.
https://upload.wikimedia.org/wikipedia/en/7/70/Untitled_--lithograph--_by_--Sol_LeWitt--%2C_1992.jpg

An untitled lithography that was extremely vibrant and took advantage of the primitives that we learned so far. 
I also added a little animation that makes each star spin in alternating directions at the same speed. I hope you enjoy.

*/

void setup() {
  size( 300, 400);
}

void draw() {
  //background(103); decided to not add the background because it added a cool fading effect
  
  //each star gets pushed onto the matrix starting from the largest star and ending with the smallest
  pushMatrix();
  fill(177,111,31);
  //color
  translate(width*0.5, height*0.5);
  //places the star
  rotate(frameCount / -100.0);
  //rotates the star direction is dependant on whether it is positive or negative 
  star(0, 0, 115.21, 270, 5);
  //calls the star function 
  popMatrix();
  
  pushMatrix();
  fill(164,53,63);
  translate(width*0.5, height*0.5);
  rotate(frameCount / 100.0);
  star(0, 0, 107.14, 250, 5); 
  popMatrix();
  
  pushMatrix();
  fill(110,41,35);
  translate(width*0.5, height*0.5);
  rotate(frameCount / -100.0);
  star(0, 0, 98.57, 230, 5); 
  popMatrix();
  
  pushMatrix();
  fill(140,120,115);
  translate(width*0.5, height*0.5);
  rotate(frameCount / 100.0);
  star(0, 0, 90, 210, 5); 
  popMatrix();
  
  pushMatrix();
  fill(114,50,54);
  translate(width*0.5, height*0.5);
  rotate(frameCount / -100.0);
  star(0, 0, 81.42, 190, 5); 
  popMatrix();
  
  pushMatrix();
  fill(29,75,132);
  translate(width*0.5, height*0.5);
  rotate(frameCount / 100.0);
  star(0, 0, 72.86, 170, 5); 
  popMatrix();
  
  pushMatrix();
  fill(167,60,42);
  translate(width*0.5, height*0.5);
  rotate(frameCount / -100.0);
  star(0, 0, 64.29, 150, 5); 
  popMatrix();
  
  
  pushMatrix();
  fill(46,54,97);
  translate(width*0.5, height*0.5);
  rotate(frameCount / 100.0);
  star(0, 0, 55.71, 130, 5); 
  popMatrix();
  
  
  pushMatrix();
  fill(154,47,37);
  translate(width*0.5, height*0.5);
  rotate(frameCount / -100.0);
  star(0, 0, 47.14, 110, 5); 
  popMatrix();
  
  pushMatrix();
  fill(144,87,46);
  translate(width*0.5, height*0.5);
  rotate(frameCount / 100.0);
  star(0, 0, 38.57, 90, 5); 
  popMatrix();

  pushMatrix();
  fill(26,36,52);
  translate(width*0.5, height*0.5);
  rotate(frameCount / -100.0);
  star(0, 0, 30, 70, 5); 
  popMatrix();
  
  pushMatrix();
  
  
  fill(139,29,34);
  translate(width*0.5, height*0.5);
  rotate(frameCount / 100.0);
  star(0, 0,21.42, 50, 5); 
  popMatrix();
  
  pushMatrix();
  fill(36,88,154);

  translate(width*0.5, height*0.5);
  rotate(frameCount / -100.0);
  star(0, 0,12.86, 30, 5); 
  popMatrix();
  
  
  
  
}


//star function from https://processing.org/examples/star.html
void star(float x, float y, float radius1, float radius2, int npoints) {
  //takes in a float for the x and y coordinates as well as 2 values for the radius one for the inner circle and one for the outer circle both in float,
  //and finally an integer for the amount of points you want in the star
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
