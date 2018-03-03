int frame = 0;

void setup() {
  size(300, 600);
  colorMode(HSB, 360, 100, 100);
}

void draw() {
  background(color(0, 0, 100)); // clear the screen
  
  stroke(0);
  strokeWeight(1);
  // draw a 15x15 grid of dots
  for (int y = 0; y < 300; y += 20) {
    // set fill for row (also animate it)
    fill(color((y + frame) % 360, 100, 100));
    for (int x = 0; x < 300; x += 20) { // draw row
      ellipse(x + 10, y + 10, 20, 20); // draw circle
    }
  }
  
  noStroke();
  // draw 200 circles in decreasing radii
  for (int r = 200; r > 0; r--) {
    fill(color((r + frame) % 360, 100, 100)); // set colour to be offset by frame (i.e. animate it)
    ellipse(150, 450, r, r);  // draw circle
  }
  
  frame++; 
}