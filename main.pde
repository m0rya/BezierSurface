BezierSrf b0;

void setup() {
  size(500, 500, OPENGL);
  b0 = new BezierSrf();
}

float ang=0;

void draw() {
  background(40);
  fill(255);
  text("Rational Bicubic Bezier Surface", 10, 20);
  
  lights();  
  translate(width/2, height/2);
  rotateX(map(-mouseY, 0, width, -PI, PI));
  rotateY(map(mouseX, 0, height, -PI, PI));
  
  b0.draw(color(255, 255, 255));  
  b0.upDown();

  
}

void keyPressed() {
  if (key=='w') {
    b0.w12+=0.1;
    b0.w22+=0.1;
    b0.w11+=0.1; 
    b0.w21+=0.1;
  }
  if (key=='W') {
    b0.w12-=0.1;
    b0.w22-=0.1;
    b0.w11-=0.1; 
    b0.w21-=0.1;    
  }

  if(key == ' '){
    b0.tglUpDown();
  }
}


