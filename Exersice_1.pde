//Import Sounds
import ddf.minim.spi.*; 
import ddf.minim.signals.*; 
import ddf.minim.*; 
import ddf.minim.analysis.*;
import ddf.minim.ugens.*; 
import ddf.minim.effects.*;
//Loading all content
PImage bg;

//PNG Images
PImage zoom;
PImage MASK1;
PImage MASK2;

//Typefaces Used
PFont font1;

void setup(){
  
  size(1200,544);
  background(255);
  bg = loadImage("Creation2.jpg");
  zoom = loadImage("Hands.jpg");
  MASK1 = loadImage("MASK1.png");
  MASK2 = loadImage("MASK2.png");
  
  //Creating the Font
  font1 = loadFont("ArialNarrow-Italic-48.vlw");
  
  //Music
  minim = new Minim(this);   
  player = minim.loadFile("sample.mp3");
}

void draw(){
image(bg, 0,0);

if((mouseX > 280 && mouseX < 750)){
 image(zoom,310,160,300,200);
  image(MASK1,130,210, 40,40);
  image(MASK2, 665, 130, 40, 40);
  
  
  //Displaying font
  textFont(font1);
  textSize(26);
  text("Dont Touch Me",390,400);
  
  
  //Sound
  
  
}

}
