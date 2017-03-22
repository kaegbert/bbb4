PImage congress; 
PImage bernie; 
PImage bernie1; 
PImage bernie2; 
PImage bs; 
PImage ppl; 
PImage donald; 
int stage = 1;
float x = 1;
//declare the array
Poop[] poops = new Poop[50]; 
float numpoops = 49;


void setup() { 

  fullScreen(); 

  //pictures
  donald = loadImage("donald.png:");
  bernie = loadImage("bernie.png"); 
  bernie1 = loadImage("bernie1.png"); 
  bernie2 = loadImage("bernie2.png"); 
  bs = loadImage("bs.png"); 
  ppl = loadImage("ppl.png"); 

  //array for loop!
  for (int i = 0; i < numpoops+1; i++) {
    poops[i] = new Poop();
  }
}

void draw() { 

  if (stage == 1) { 
  
  background(0); 
  
  textAlign(CENTER); 
  text("BERNIE'S BULLSHIT BLOCKADE",100,160); 
  text("The Trump Administration is Trying to Throw BULLSHIT at the American People!",100,170); 
  text("Help Bernie Stop Them!",100,180); 
  text("Click the Mouse To Cut the Bullshit",100,190); 
  text("Press the SPACEBAR to Brush Bernie's Teeth",100,200); 
  text("Press SHIFT to Move On to the Next Stage",100,210); 
  text("Press 0 to Reset",100,220); 
  text("Press ANY KEY to Start",100,230); 
  if (keyPressed == true) { 
    stage = 2; 
  }
  
  if(stage == 2) { 
  
  background(0); 
  println (mouseX +"," + mouseY);
  imageMode(CENTER); 
  image(bernie, mouseX, mouseY); 
  //array loop 
  
  image(ppl,width/2,height-975); 
  
  //mouseclick stuff
  if (mousePressed) {
    textSize(50); 
    text("This game is broken...",100,100);
    imageMode(CENTER); 
    image(bernie1, mouseX, mouseY); 
  }
  
  //spacebar stuff
  if (keyPressed) { 
    if (key == ' ') {
      textSize(50); 
      text("... just like our Democracy.",width-700,height-100); 
      imageMode(CENTER); 
      image(bernie2, mouseX, mouseY); 
    }
  }
  
  class Poop { 
  float x;
  float y;
  float xspeed;
  float yspeed;
  
  Poop() {

    x = random(width);
    y = random(height);
    xspeed = 10;
    yspeed = 3;

  //void display() {  
    image(bs, x, y, 55, 55);
  //}

  //void move() { 
    x = x + xspeed;
    y = y + yspeed;
  //}

    if ((x > width) || (x < 0)) {
      xspeed = xspeed * -1;
    }

    if ((y > height) || (y < 0)) {
      yspeed = yspeed * -1;
    }
  }
}

  for (int i = 0; i < x; i++) {
    poops[i].display(); 
    poops[i].move();
  }
  x = x + 1;
  if (x >= numpoops) {
    x=numpoops;
  }
  }
}