void setup() {
  size(300, 600);
  colorMode(HSB, 360, 100, 100); // use HSV
}

void draw() {
  background(color(0, 0, 100)); // clear the screen
  noStroke();
  for (int x = 0; x < mouseX; x += 10) { // loop through rows until mouseX
    for (int y = 0; y < mouseY; y += 10) { // loop through columns until mouseY
      fill(color(x * y % 360, 100, 100)); // set fill to random rainbowy colour
      ellipse(x + 10, y + 10, 10, 10); // draw ellipse
    }
  }
}
