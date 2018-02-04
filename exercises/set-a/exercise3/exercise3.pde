void setup() {
  size(300, 600);
  background(0); // black background
}

void draw() {
  // set RGB color to use mouse's X and Y coords for R and G and a const B
  fill(color(mouseX, mouseY, 255));
  // draw circle at mouse location with radius 50
  ellipse(mouseX, mouseY, 50, 50);
}

// clear screen on mouse press
void mousePressed() {
  background(0);
}
