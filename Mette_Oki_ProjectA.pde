float baseR;
float baseG;
float baseB;
float shadeDistance; 

int[] red = new int [2];
int[] green = new int [2];
int[] blue = new int [2];
     
  
  

void setup() {
  size(620,820); 
  background(#6C614B); 
  strokeWeight(0); 
  fill(#8BC0CE); 
  rect(10,10,600,800);
 
   red [0] = 192;
   red [1] = 31;
  
   green [0] = 147;
   green [1] = 82;
   
   blue [0] = 44;
   blue [1] = 126;
   
  shadeDistance = 30; 
}

void draw() {
 drawRect(15, 90); 
 drawRect(30,60); 
 drawRect(40, 40); 
 delay(140); 
 fill(red [0], green [0], blue [0]);
  
}

void drawRect(int bounds, int rectSize){
  for(int x = bounds; x < width - bounds ; x = x + 100) { 
  for(int y = bounds; y < height - bounds ; y = y + 100) {  
    rect(x,y,rectSize,rectSize);  
     fill(chooseR(), chooseG(), chooseB());
  }
 }
}

float chooseR(){
  return baseR + random( -shadeDistance, shadeDistance); 
}

float chooseG(){
  return baseG + random( -shadeDistance, shadeDistance);
}

float chooseB(){
  return baseB + random( -shadeDistance, shadeDistance);
}

void mousePressed() {
  fill(red [1], green [1], blue [1]);
  shadeDistance = 30; 
}


  









  
  
