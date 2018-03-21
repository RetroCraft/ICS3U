// CONSTANTS
// because white is annoying to make in hsb
final color white = color(255);

// PARAMETERS
// height
final int wHeight = 600; // height
final int maxY = wHeight / 2; // max pos y value
final int minY = maxY - wHeight; // min neg y value
// width
final int wWidth = 600; // width
final int maxX = wWidth / 2; // max pos y value
final int minX = maxX - wWidth; // min neg y value
// lines
final int lineWidth = 2;
// space between lines
final int gridDensity = 50;

void setup() {
  size(600, 600);
  colorMode(HSB, 360, 100, 100);
}

// percentage progress from 0 (normal grid) to 1
float progress = 0;

void draw() {
  pushMatrix();
  translate(wHeight / 2, wWidth / 2);
  background(0);
  stroke(white);
  for (int x = minX; x <= maxX; x += gridDensity) {
    strokeWeight(lineWidth * (x == 0 ? 2 : 1));
    line(x, minY, x, maxY);
  }
  for (int y = minY; y <= maxY; y += gridDensity) {
    strokeWeight(lineWidth * (y == 0 ? 2 : 1));
    line(minX, y, maxX, y);
  }
  popMatrix();
}
