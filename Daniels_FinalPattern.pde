    float x = 0;
    float y = 0;
    float spacing = 50;
    
    //Array for X sizes
    int[] linesArrX = {50, 200, 350, 500, 650};
    
    //Array for Y sizes
    int[] linesArrY = {50, 200, 350, 500, 650};
    
    //Array for line weights
    int[] linesWeight = {30, 25, 20, 15, 10};
////////////////////////////////////////////////////////////////////////////////////////
    void setup() {
      size(1439, 750);
    }
////////////////////////////////////////////////////////////////////////////////////////
    void draw() {
      background(240, 77, 213);
      
      strokeWeight(10);
      stroke(227,126,210,150);
      line(805,0,805,750);
      
      strokeWeight(15);
      stroke(227,126,210,150);
      line(965,0,965,750);
      
      strokeWeight(20);
      stroke(227,126,210,150);
      line(1135,0,1135,750);
      
      strokeWeight(25);
      stroke(227,126,210,150);
      line(1310,0,1310,750);
     
      //lines move across screen giving the illusion of zooming out
      spacing = spacing + random(1.4);
      //(value 1 = positioning, value 2 = stroke weight)
  
    
      //Both of these arrays are the same length (LinesXArr.length = linesWEight.length).  So let's iterate through linesXArr.
      //Start at array position 0 and go to the end of the array (linesArrX.length)
      for (int i = 0; i < linesArrX.length; i++) {
        linesX(linesArrX[i], linesWeight[i]);
      }
    
      //Both of these arrays are the same length (LinesYArr.length = linesWEight.length).  So let's iterate through linesYArr.
      //Start at array position 0 and go to the end of the array (linesArrY.length)
      for (int i = 0; i < linesArrY.length; i++) {
        linesY(linesArrY[i], linesWeight[i]);
      }
    }
////////////////////////////////////////////////////////////////////////////////////////
    
    //x-axis Lines
    void linesX(int _x, int w) {
      strokeWeight(w);
      stroke(227,126,210,120);
      x = _x;
      while (x < width) {
        line(x, 0, x, height);
        x = x + spacing;
      }
    }
    
    //y-axis Lines
    void linesY(int _y, int w) {
      strokeWeight(w);
      stroke(229,148,216,120);
      y = _y;
      while (y < height) {
        line(0, y, width, y);
        y = y + spacing;
      }
    }
