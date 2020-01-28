// This sketch is an exercise to understand the difference
// between function definitions and function calls.
//
// I define a function called byTwo at line 19;
// I call it at line 13.

void setup() {
  size(400, 300);
}

void draw() {
  background(200, 100, 0);
  int nByTwo = byTwo(10); // ** function call **
  text(nByTwo, mouseX, mouseY);
}

// ** function definition **
// function that returns twice the value that is passed as input
int byTwo(int n) {
  return 2*n;
}
