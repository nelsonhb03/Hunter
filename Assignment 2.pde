int posX = 250;
float posY = 200;
int ballDiameter = 40;
float velocityY = 0.0;
float gravity = 1.5;
boolean onGround = false;
float jumpSize = -12;
void setup(){
   size(800,600);
   
}

void draw(){
  background(255);
  line(0,height/2,width,height/2);
  update();
  frameRate(12);
  println(mouseX + " : " + mouseY);
}


void update(){

  velocityY = gravity + velocityY;
  posY = velocityY + posY;
  if (posY + (ballDiameter/2) >= (height/2)){ 
    posY = height/2 - (ballDiameter/2);
 onGround= true;
} else{
  onGround = false;
}
  for (int x = 1; x < 10; x++){
 fill(204,120,0);
    ellipse(posX,posY, ballDiameter + (x*1), ballDiameter + (x*1));
line(250,100,250,150);
line(240,100,240,150);
line(230,100,230,150);
line(260,100,260,150);
line(270,100,270,150);
line(280,100,280,150);
line(230,130,280,130);
line(230,120,280,120);
line(230,140,280,140);
 fill(300,0,0);
  rect(210,100,75,10);
fill(150);
  rect(205,100,10,200);
  fill(255);
   rect(202,50,20,75);
}
}
void mousePressed(){
  if (onGround){
  jump();
}
}
void jump(){
  velocityY= -27;
}
