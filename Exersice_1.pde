PImage bg;
PImage zoom;
PImage MASK1;
PImage MASK2;

void setup(){
  
  size(1200,544);
  background(255);
  bg = loadImage("Creation2.jpg");
  zoom = loadImage("Hands.jpg");
  MASK1 = loadImage("MASK1.png");
  MASK2 = loadImage("MASK2.png");
}

void draw(){
image(bg, 0,0);

if((mouseX > 280 && mouseX < 750)){
  image(zoom,280,100,448,252);
  image(MASK1,100,50);
  image(MASK2, 400,20);
  
}

}
