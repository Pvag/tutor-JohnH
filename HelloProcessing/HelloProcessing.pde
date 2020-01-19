// refactoring
// variables
// boolean values and conditionals

// types of variables:
// int, float, double, bool - String (class)

// global scoping - Java is a strongly-typed language (you have to specify the type of your variable)
int x = 20;
int speed = 2;
int squareSide = 100;

void setup() {
  size(300, 400); // width, height // must be the first line inside setup()
  //specify details for this element before calling the actual rendering function (rect)
  //noStroke(); // no border
  fill(0, 255, 0);
  
  //int x = 10; // this would win over the global one - it is more specific than the global one
  //rect(x, 20, 10, 10);
}

// the draw function is continuously called by Processing (almost 70 times per second)
void draw() {
  background(0, 0, 255); // 0 red, 0 green, full blue (colors range from 0 to 255)
  rect(x, 60, squareSide, squareSide); // x, y, h-side, v-side
  //rect(x, 180, 100, 100); // x, y, h-side, v-side
  
  // logic of the motion
  if ( (x > width - squareSide) || (x < 0) ) {
    speed = - speed; // invert speed
  }
  x = x + speed;

  ellipse(width/2, height/2, 100, 100); // x, y, h-diam, v-diam
}
