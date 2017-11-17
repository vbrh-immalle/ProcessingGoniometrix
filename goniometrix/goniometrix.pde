float angle = 0;
float div = 90; // how many divisions of TWO_PI we use in calculation
float nrUnitPixels = height; // nr of pixels of radius of unit circle

void drawAxis() {
  stroke(127);
  line(0, height/2, width, height/2); // X
  line(width/2, 0, width/2, height); // Y
}

void drawUnitCircle() {
  color(255);
  ellipse(width/2, height/2, height, height);
  point(width/2, height/2);
}

void drawVector() {
  color(255, 0, 0);
  line(width/2, 
      height/2, 
      width/2 + nrUnitPixels * cos(angle), 
      height/2 + nrUnitPixels * sin(angle)
    );
}

void drawOrthos() {
  color(0, 255, 0);
  line(width/2 + nrUnitPixels * cos(angle), 
      height/2, 
      width/2 + nrUnitPixels * cos(angle), 
      height/2 + nrUnitPixels * sin(angle)); // cos
  // TODO: sin
}

void setup() {
  size(600, 400);
  frameRate(20);
  drawUnitCircle();
}

void draw() {
  angle += TWO_PI/div;
  
  clear();

  drawUnitCircle();
  drawVector();
  drawOrthos();
  drawAxis();
}