float[] lotsaFloats = new float[50];

void setup() {
  size(640, 640);

  generate();
}

void draw() {
  for (int i = 0; i < 50; i += 2) {
    // check if top or bottom edge is closer
    int closerEdge = lotsaFloats[i + 1] < 320 ? 0 : 640;
    line(lotsaFloats[i], lotsaFloats[i + 1], lotsaFloats[i], closerEdge);
  }
}

// generate 50 random float values
void generate() {
  background(255);
  for (int i = 0; i < 50; i++) {
    lotsaFloats[i] = random(640);
  }
}

// regenerate on mouse press
void mousePressed() {
  generate();
}
