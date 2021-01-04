//Import Sounds
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

import processing.sound.*;

//Declaring sound
Minim minim; 
AudioPlayer player;
//Loading all content
PImage bg;

//PNG Images
PImage zoom;
PImage MASK1;
PImage MASK2;
PImage charmaine;
PImage crazylady;
PImage covidgerm;


//Typefaces Used
PFont font1;

void setup(){
  
  size(1200,544);
  background(255);
  bg = loadImage("Creation2.jpg");
  zoom = loadImage("Hands.jpg");
  MASK1 = loadImage("MASK1.png");
  MASK2 = loadImage("MASK2.png");
  charmaine= loadImage("Charmaine.png");
  crazylady = loadImage("CrazyLady.png");
  covidgerm = loadImage("COVIDGerm.png");
  
  
  //Creating the Font
  font1 = loadFont("ArialNarrow-Italic-48.vlw");
  
  //Music
  minim = new Minim(this);   
  player = minim.loadFile("DontTouchMe.aif");
  
}

void draw(){
image(bg, 0,0);
//IF statements shows that once the user puts the cursor on the area, it will display the masks an 'zoom in' on 
if((mouseX > 280 && mouseX < 750)){
 image(zoom,310,160,300,200);
 

  //Adding the Crazy Lady
  image(crazylady, 890,70,70,70);
  image(crazylady, 1000,140,70,70);
  image(crazylady, 620,130,70,70);
  
   //Adding the Masks
  image(MASK1,130,210, 40,40);
  image(MASK2, 665, 130, 40, 40);
   
    //Sound
  player.play();
  
   //Displaying font
  textFont(font1);
  textSize(26);
  text("Dont Touch Me",390,400);

}



if(mousePressed){
  
   image(covidgerm, 50,50);
   
 }
 

}
