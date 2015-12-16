  PImage img;
  PImage img2;
  PImage img3;
HLine h1 = new HLine(20, 2.0); 
HLine h2 = new HLine(50, 2.5); 
 int value = 0;
void setup() 
{

  background(200);
  size(500, 500);
  frameRate(30);
img = loadImage("pumpkin-pie.jpg");
img2 = loadImage("images.jpg");
img3 = loadImage("casserole.jpg");
}

void draw() { 
 fill(value);
 rect(25,25,10,60);
 rect(40,25,10,60);
 rect(60,25,10,60);
 rect(75,25,10,60);
 rect(50,100,15,100);
  rect(25,75,60,25);
  ellipse(150,50,50,75);
   rect(143,85,15,75);
 line (mouseX, 200, mouseX, 300); 
 line (mouseY, 200, mouseY, 300);
h1.update();
h2.update();
image(img, 100, 175, width/7, height/7);
image(img2, 225, 150, width/5, height/5);
image(img3, 350, 150, width/6, height/6);
}

 
class HLine { 
  float ypos, speed; 
  HLine (float y, float s) {  
    ypos = y; 
    speed = s; 
  } 
  void update() { 
    ypos += speed; 
    if (ypos > height) { 
      ypos = 0; 
    } 
    line(0, ypos, width, ypos); 

} 
} 

// =================================================================
//global variables / objects
StopWatchTimer sw;
// =================================================================
// Main functions


void time() {
  background(#FFFFFF);
  fill(#000000);
  textAlign(CENTER);
  // textFont(words, 50);
  //
  //  text(second()+ , 350, 175);
  //
  //  text(":", 300, 175);
  //
  //  text(minute(), 250, 175);
  //
  //  text(":", 200, 175);
  //  text(hour(), 150, 175);
  text(nf(sw.hour(), 2)+":"+nf(sw.minute(), 2)+":"+nf(sw.second(), 2), 150, 175);
}
// =================================================
// classes
class StopWatchTimer {
  int startTime = 0, stopTime = 0;
  boolean running = false; 
  void start() {
    startTime = millis();
    running = true;
  }
  void stop() {
    stopTime = millis();
    running = false;
  }
  int getElapsedTime() {
    int elapsed;
    if (running) {
      elapsed = (millis() - startTime);
    }
    else {
      elapsed = (stopTime - startTime);
    }
    return elapsed;
  }
  int second() {
    return (getElapsedTime() / 1000) % 60;
  }
  int minute() {
    return (getElapsedTime() / (1000*60)) % 60;
  }
  int hour() {
    return (getElapsedTime() / (1000*60*60)) % 24;
  }
}
