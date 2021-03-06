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
AudioPlayer backgroundsound;

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
  
  minim = new Minim(this);   
  backgroundsound = minim.loadFile("backgrounSong.mp3");
  
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

if((mouseX > 280 && mouseX < 750)){
    // Dont Touch Me Sound
  player.play();
  
  //isplay close up on hands
 image(zoom,310,160,300,200);
 

  //Adding the Meme Lady
  image(crazylady, 890,70,70,70);
  image(crazylady, 1000,140,70,70);
  image(crazylady, 620,130,70,70);
  
   //Adding the Masks
  image(MASK1,130,210, 40,40);
  image(MASK2, 665, 130, 40, 40);
   
   
   //covid germs
  image(covidgerm, 60,100, 50,50 );
  image(covidgerm, 100,300, 50,50 );
  image(covidgerm, 200,400, 50,50 );
  image(covidgerm, 130,450, 50,50 );
  
   //Displaying font
  textFont(font1);
  textSize(26);
  text("Dont Touch Me",390,400);
  
  //cursor turns into covid germ
 // cursor(covidgerm, 30, 30);

}

 

}
