// keep track of frame number (for animations)
int frame = 0;

void setup() {
  size(300, 625);
  colorMode(HSB, 360, 100, 100);
  background(0); // black
}

void draw() {
  noStroke();
  // y-axis circles
  fill(frame * 5 % 360, 100, 100); // loop through colors at 5x frame rate
  float r1 = frame; // radius expands at frame rate
  ellipse(150, frame * 3 - 10, r1, r1); // y-coord increases thrice frame rate but offset 10px
  // x-axis circles
  fill(frame * 7 % 360, 100, 100); // loop at 7x
  float r2 = frame / 5; // grow 5x slower
  ellipse(frame - 100, 300, r2, r2); // increase at frame rate but offset 100 px
  frame++;
}

// reset on mouse press
void mousePressed() {
  background(0);
  frame = 0;
}
