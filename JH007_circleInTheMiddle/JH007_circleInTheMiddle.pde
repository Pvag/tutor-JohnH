// draws a circle in the middle of the canvas
// using a function

void setup() {
  size(700, 150);
  // static drawing
  noLoop();
  background(0, 180, 255); // light blue
}

// 'void' means 'doesn't return' 
void draw() {
  final int circleDiam = 50;
  ellipse(width/2, height/2, circleDiam, circleDiam);
}
