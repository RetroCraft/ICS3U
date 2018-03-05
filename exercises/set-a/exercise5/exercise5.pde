float coordX = 0;
float coordY = 0;

void setup() {
  size(300, 600);
  background(0); // black background
  colorMode(HSB, 360, 100, 100);
}

void draw() {
  stroke(color(0, 0, 50));
  strokeWeight(0.5);
  // set RGB color to use mouse's X and Y coords for R and G and a const B
  fill(color(coordX + coordY, 100, 100));
  // draw circle at mouse location with radius 50
  ellipse(coordX, coordY, 50, 50);
  coordX += 0.75;
  coordY += 10;
  if (coordY >= 600) coordY = 0;
  if (coordX >= 300) {
    reset();
  }
}

// clear screen on mouse press
void mousePressed() {
  reset();
}

void reset() {
  background(0);
  coordX = 0;
  coordY = 0;
}
