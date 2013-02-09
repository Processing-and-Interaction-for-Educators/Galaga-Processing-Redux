//code is only for proof of concept for the ship to move back and forth. all other game aspects to be added!


import processing.serial.*;
PImage img;
PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
int buttonPin = bPin

float xPos;

Serial myPort;

void setup()
{
  background(#000000);
  size(800,800);
  img= loadImage("th_galaga-large2.jpg");
  img1= loadImage("bad guy #1.gif");
  img2= loadImage("bad guy #2.png");
  img3= loadImage("bad guy #3.jpg");
  img4= loadImage("bad guy #4.jpg");
  img5= loadImage("bullet.jpg");
  img6= loadImage("black square.gif");

 // List all the available serial ports
 println(Serial.list());
 // I know that the first port in the serial list on my mac
 // is always my  Arduino, so I open Serial.list()[0].
 // Open whatever port is the one you're using.
 myPort = new Serial(this,Serial.list()[1], 9600);
 // don't generate a serialEvent() unless you get a newline character:
 myPort.bufferUntil('\n');
 // set inital background:
 
}

void draw()
{
  
  background(0);
  image(img,xPos,700,40,40);
  image(img1,90,100,30,30);
  image(img1,130,100,30,30);
  image(img1,170,100,30,30);
  image(img1,210,100,30,30);
  image(img1,250,100,30,30);
  image(img2,710,100,30,30);
  image(img2,670,100,30,30);
  image(img2,630,100,30,30);
  image(img2,590,100,30,30);
  image(img2,550,100,30,30);
  image(img3,90,170,30,30);
  image(img3,130,170,30,30);
  image(img3,170,170,30,30);
  image(img3,210,170,30,30);
  image(img3,250,170,30,30);
  image(img4,710,170,30,30);
  image(img4,670,170,30,30);
  image(img4,630,170,30,30);
  image(img4,590,170,30,30);
  image(img4,550,170,30,30);
  //Mouse();
  
  print(xPos);
}
void serialEvent (Serial myPort) {
 // get the ASCII string:
 String inString = myPort.readStringUntil('\n');
 
 if (inString != null) {
 // trim off any whitespace:
 inString = trim(inString);
 // convert to an int and map to the screen height:
 float inByte[] = float(split(inString, ",")); 
 if (inByte.length >=2) {
xPos = map(inByte[0], 0, 1023, 0, width-40);
b
 }
 if 
}
