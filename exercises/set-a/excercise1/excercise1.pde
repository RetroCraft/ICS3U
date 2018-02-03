PFont font;

// current sun rotation offset
float sunDegrees = 0;
// current door state
boolean doorOpen = false;

// colour constants
int skyBlue = color(118, 175, 245);
int sunYellow = color(252, 245, 3);

void setup() {
  size(800, 600);
  font = createFont("sans-serif",32);
}

void draw() {
  // clear screen
  background(skyBlue);

  // sun
  pushMatrix(); // start matrix
  translate(200, 300); // set (0, 0) to (200, 300)
  fill(sunYellow);
  ellipse(0, 0, 100, 100);
  // rays (also make it spin cause reasons)
  int rays = 20;
  // ray length follows sine wave
  float rayLength = sin(radians(sunDegrees * 4)) * 15 + 80;
  stroke(sunYellow);
  strokeWeight(4);
  for (int i = 0; i < rays; i++) {
    // each ray is one `ray`th of a circle apart (i.e. evenly spaced)
    float endX = sin(radians(sunDegrees + (360 / rays * i))) * rayLength;
    float endY = cos(radians(sunDegrees + (360 / rays * i))) * rayLength;
    line(0, 0, endX, endY);
  }
  popMatrix(); // end matrix
  // move by half a degree per frame (i.e. 15 degrees per second)
  sunDegrees += 0.5;

  // ground
  stroke(0);
  strokeWeight(1);
  fill(color(33, 233, 92));
  rect(-1, 300, 801, 300); // hacky way to have only top border

  // house
  // keep stroke from ground (1 px black)
  fill(color(239, 97, 122)); // reddish brick
  rect(550, 250, 150, 100); // house base
  fill(255); // white
  rect(doorOpen ? 600 : 625, 275, 25, 75); // door (move depending if open)
  fill(0); // black
  triangle(545, 250, 705, 250, 625, 200); // roof
  ellipse(640, 310, 10, 10); // doorknob
  if (doorOpen) {
    rect(625, 275, 25, 75); // opening behind door
    fill(255);
    // fancy translation/rotation thing using matrices
    // https://processing.org/discourse/beta/num_1219267259.html
    pushMatrix();
    translate(635, 295);
    rotate(radians(90));
    translate(-635, -295);
    text("boo ☺", 635, 295); // i'm having too much fun with this
    popMatrix();
  }
}

void mousePressed() {
  // on click invert doorOpen (closed -> open, open -> closed)
  doorOpen = !doorOpen;
}
