// save randomly generated values so they don't change every frame
float[] leftRadii = new float[10];
float[] rightRadii = new float[10];

void setup() {
  size(640, 640);
  colorMode(HSB, 360, 100, 100);
  smooth(10); // blur/antialias with radius 10
  randomGenerate(); // randomly generate some numbers
}

void draw() {
  background(color(0, 0, 100));
  noFill();
  // left side
  for (float seed : leftRadii) {
    stroke(color(seed * 360 / 25, 75, 100)); // pick a muted colour based on seed
    strokeWeight(seed); // randomly select weight
    float r = 200 + seed; // extend radius by random seed
    // draw arc with radius r, size 180° + seed
    arc(r + 10, r + (2 * seed), r * 2, r * 2, radians(90), radians(270 + seed));
  }
  // right side
  // do the same thing as above but with different parameters
  for (float seed : rightRadii) {
    stroke(color(seed * 360 / 25, 75, 100));
    strokeWeight(seed);
    float r = 200 + seed;
    arc(width - r - 10, height - r - (2 * seed), r * 2, r * 2, radians(-90), radians(90 + seed));
  }
}

// regenerate seeds on mouse press
void mousePressed() {
  randomGenerate();
}

// randomly generate numbers and save to left/rightRadii
void randomGenerate() {
  // fill array with random numbers
  for (int i = 0; i < leftRadii.length; i++) {
    leftRadii[i] = random(25);
    rightRadii[i] = random(25);
  }
}
