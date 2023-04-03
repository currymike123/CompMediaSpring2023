//Create rotating squares
//gradient that receds into the background
//arange in a grid formation
//background gradient for depth
//mouse cursor position influences the rotation speed of squares
//fluctuating speed
//reverse rotation rate
float a = 0.0;
float rSize;  //rectangle size
float rotationRate;
float speed=0.75;
int tones[]={25, 50, 75, 100, 125, 150, 175, 200, 225, 250}; //shades for squares

void setup() {
  size(750, 750);
  smooth();
  rectMode(CENTER); //change it looks cool
  //fill(200, 100, 100);
  rSize = width / 7; //size of squares
  noStroke();
  //delay(180); //change speed?
}

void draw() {
  //background(200, 50, 50);
  //x = lerp(x, mouseX, 0.05);
  //y = lerp(y, mouseY, 0.05);

  pillar(-rSize, -rSize);
}

void pillar(float x, float y) {
  background(20, 20, 20);
  a += 0.005;
  /*if (a >= TWO_PI) {
   a = 0.0;
   } else if (a < TWO_PI) {
   z=z*-1;
   }*/

  translate(width/2, height/2);
  //changes rotation speed
  //float rotationRate=((float)mouseX/width);

  //rotate(a * 1.001+rotationRate);
  float l=1; //variable to change square size
  int k=0;
  for (int j=0; j<10; j++) { //make multiple squares that rotate
    fill(tones[j], 20, 20, 225);
    square(x+k, y+k, rSize*2/l);
    /*if(a==TWO_PI || a==0){ //reverse rotation in opposite way without reseting position
     speed=speed*-1;
     }*/
    rotate(a*speed);
    k+=10;
    //l+=.25;
  }
}
