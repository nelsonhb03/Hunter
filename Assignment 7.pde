void setup(){
size(1280,800);
background(175,55,100);
fill(100,0,0);
stroke(300,20,10);
beginShape(QUADS);
vertex(120,110);
vertex(130,130);
vertex(130,150);
vertex(220,140);
endShape(CLOSE);
beginShape(RECT);
vertex(100,90);
vertex(90,150);
vertex(135,50);
vertex(70,80);
endShape(CLOSE);

}

void draw(){
 // Man throwing paper airplanes to the left.  interactive shapes make his floor connected to the arc in the lower right corner.  
 //  Modern art because it has odd background, and man could be up for interpretation with his look and shapes coinciding.  
  background(100,0,0);
  quad(mouseX,mouseY,50,100,450,20,0,150);
  triangle(mouseX,mouseY,60,90,100,400);
 beginShape(TRIANGLE_STRIP);
vertex(120,110);
vertex(130,130);
vertex(130,150);
vertex(120,140);
endShape(CLOSE);
beginShape(TRIANGLE);
vertex(500,150);
vertex(400,100);
vertex(500,100);
vertex(400,150);
beginShape(QUADS);
vertex(150,110);
vertex(130,130);
vertex(130,150);
vertex(80,140);
endShape(CLOSE);
beginShape(RECT);
vertex(100,90);
vertex(90,150);
vertex(135,50);
vertex(70,80);
endShape(CLOSE);
line(725,385,600,500);
line(775,385,900,500);
point(100,50);
point(200,100);
triangle(400,55,600,85,500,65);
fill(90,100,5);
rect(725,180,50,200);
rect(700,80,100,100);
ellipse(650,200,80,80);
ellipse(850,200,80,80);
arc(250,400,120,120,50,HALF_PI);
arc(1000,500,600,600,0,HALF_PI+.51);
fill(200,150,75);
}
