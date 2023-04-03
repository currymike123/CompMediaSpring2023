//Kevin Santorelli
//Iterative Design Project
//March 3, 2023


boolean run = true;

float numPoints;        //Initialize floating point variables for use in calculation of curve
float widthPerPoint;
float waveFrequency;
float waveAmplitude;

color[] colors = {      //Initialize and populate an array of colors to cycle through during draw() loop
  #FF0000,
  #FF00E6,
  #9800FF,
  #006CFF,
  #00F4FF,
  #00FF9F,
  #03AA6B,
  #9EAA03,
  #E4F044,
  #FFAA00,
  #FF2200,
  #D532D8,
};
  

void setup() {                          
  size(960, 540);
  
  numPoints = width/5;                 //points generated in the wave, basically amount of ellipses drawn, less points increases performance
  widthPerPoint = width / numPoints;   //how far apart each point is 
  waveFrequency = TWO_PI / numPoints;  //frequency value of each wave
  waveAmplitude = 50;                  //amplitude of each wave
  
  frameRate = 0.1;
  
  //Initializes a startup screen explaining the program and providing context on how it works
  //Also shows user where best to orient mouse cursor on program start
  
  background(0);            
  stroke(0);
  rect(0,0,50,50);

  textSize(25);
  text("Hello! Start with the mouse in the square please.", 80, 30);
  
  fill(#EA2121);
  textSize(45);
  text("This program visually demonstrates the effect of ", 40, 100);
  text("frequency and amplitude on a sin wave.", 85, 145);
  
  textSize(20);
  fill(#21DBEA);
  text("The function will change as such: ", 120, 200);
  text("* As the mouse is moved to the right of the screen, ", 140, 230);
  text(" the frequency of each wave will increase.", 155, 260);
  text("* As the mouse is moved to the bottom of the screen, ", 140, 290);
  text(" the amplitude of each wave will increase.", 155, 320);
  text("Additionally, press any key to cycle through colors in random order.", 120, 380);
  
  textSize(60);
  fill(#FFFFFF);
  text("Click box to start!", 280, 500);
}


void draw() {
  
  if(run == false) {                            //Once mouse is clicked during start screen, the program will run
    background(75);
  
    if (keyPressed == true) {                   //Pulls a color from the preset array to fill wave function when a key is pressed
    fill(colors[(int)random(colors.length)]);
    }
  
    wave();        //calls and runs the wave() function created below
  }
}


void wave() {
  //The wave function simulates a sin wave traveling across the screen, as it runs the wave appears to move from right to left
  //The for loop will draw an ellipse at points across the screen, controlled by the numPoints variable
  //The x location is controlled by the widthPerPoint variable, telling the function how spaced out each ellipse should be 
  //The y location is controlled by a sin calculation using the waveFrequency variable, as well as frameCount and mouse position
    //Frequency controls how many peaks of the curve are drawn on the screen, and can be manipulated by the mouseX value as the user moves the cursor. Limited for actual use.
    //The frameCount allows for the movement of each ellipse up and down in the y direction, and is limited as to slow the movement down
    //The amplitude controls how tall each peak in the wave is, and can be controlled by the mouseY input as the cursor is moved down the screen. Similarly limited.
    //Each additional ellipse function is offset in the y direction by an additional 80 pixels
  
  noStroke();
  
  for (int i = 0; i < numPoints; i++) {
    ellipse(i * widthPerPoint, sin((waveFrequency * i) * (mouseX * 0.01) + (frameCount * 0.1)) * (waveAmplitude * mouseY * -0.003) + 80, 20, 20);

    ellipse(i * widthPerPoint, sin((waveFrequency * i) * (mouseX * 0.01) + (frameCount * 0.1)) * (waveAmplitude * mouseY * -0.003) + 160, 20, 20);

    ellipse(i * widthPerPoint, sin((waveFrequency * i) * (mouseX * 0.01) + (frameCount * 0.1)) * (waveAmplitude * mouseY * -0.003) + 240, 20, 20);

    ellipse(i * widthPerPoint, sin((waveFrequency * i) * (mouseX * 0.01) + (frameCount * 0.1)) * (waveAmplitude * mouseY * -0.003) + 320, 20, 20);

    ellipse(i * widthPerPoint, sin((waveFrequency * i) * (mouseX * 0.01) + (frameCount * 0.1)) * (waveAmplitude * mouseY * -0.003) + 400, 20, 20);

    ellipse(i * widthPerPoint, sin((waveFrequency * i) * (mouseX * 0.01) + (frameCount * 0.1)) * (waveAmplitude * mouseY * -0.003) + 480, 20, 20);
  }
}

void mousePressed() {        //Simply creates a function to inverse the value of the run variable once the mouse is pressed, used to start draw() after the start screen
  run = !run;
}
