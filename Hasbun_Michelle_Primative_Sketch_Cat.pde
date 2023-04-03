void setup() {
  size(750,600);
  smooth(); //allows for anti-aliasing
}

//note- do not put end curly bracket at end of strokeWeight, instead place at end of code
void draw() {
background(32,188,111);
fill(255);
stroke(255);
strokeWeight(2);

//cat head
ellipse(375,300,300,250);

//upper tufts - had to raise both upper + lower tufts from 330 and 390 to 320 and 380 to compensate the brown ear coloring
triangle(150,320,375,200,280,400);
triangle(590,320,375,200,471,400);

//lower tufts
triangle(170,380,375,250,310,420);
triangle(570,380,375,250,430,420);


//cat body - add tufts
ellipse(375,600,350,400);

//cat body - left tufts
triangle(340,400,180,470,340,600);
triangle(250,470,150,575,340,670);

//cat body - right tufts - very tedious to mirror
triangle(410,400,570,470,410,600);
triangle(500,470,600,575,410,670);


//cat ear - left
fill(255);
stroke(255);
strokeWeight(2);
triangle(188,100,375,200,200,300);

//inner ear - left
fill(250,151,234);
stroke(232,87,228);
strokeWeight(2);
triangle(195,111,320,185,210,270);

//cat ear - right
fill(255);
stroke(255);
strokeWeight(2);
triangle(563,100,375,200,542,295); // had to edit this so brown part wouldn't overlap eyes

//brown coloring on right ear - don't make same size as base ear, but not too small either
fill(193,135,90);
stroke(160,107,66);
triangle(563,100,390,180,542,290);


//inner ear - right
fill(250,151,234);
stroke(232,87,228);
strokeWeight(2);
triangle(555,111,410,185,535,270);


//cat eye - left
fill(104,234,140);
stroke(87,211,121,100); //lowered opacity of border stoke 
strokeWeight(2);

ellipse(300,270,70,70);

//cat pupil - left
fill(0);
stroke(0);
strokeWeight(2);

ellipse(300,270,25,70);

//cat eye - right
fill(104,234,140);
stroke(87,211,121,100); //lowered opacity of border stoke
strokeWeight(2);

ellipse(445,270,70,70);

//cat pupil - left
fill(0);
stroke(0);
strokeWeight(2);

ellipse(445,270,25,70);

//cat nose - do not do ellipse, too round for sharp cat. also be sure that triangle points make the nose look symmetrical and even
fill(250,151,234);
stroke(232,87,228);
strokeWeight(2);

triangle(340,330,400,330,370,350);

//cat mouth - plan to use arcs to make a cat mouth
stroke(0);
noFill();
line(330,365,350,385);
line(350,385,370,365);
line(370,365,390,385);
line(390,385,410,365);
//arc(330, 360, 80, 50, 0, HALF_PI); - cant get it to mirror and make round mouth - zig zag instead
}
