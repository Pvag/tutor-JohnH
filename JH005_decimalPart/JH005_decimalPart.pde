// This sketch shows the subtleties between integers, floats, integer division
// and float division. Always be careful whenever you mix-match different
// types of variables!

// variable declaration
int integerNumber;
float floatNumber;

void setup() {
  size(400, 200);
  
  // WATCH OUT: assigning a float to an int, automatically removes the decimal part!
  // 
  integerNumber = -8/3; // variable initialization (integer division truncates the decimal part)
  floatNumber = 6; // (2 is an integer number)
}

void draw() {
  background(0, 0, 255);
  text(integerNumber, mouseX+10, mouseY);
  text(floatNumber, mouseX+10, mouseY + 20);
  floatNumber = integerNumber; // assigns an int to a float (still .000)
  text(floatNumber, mouseX+10, mouseY + 40);
  floatNumber = 8/3; // integer division is triggered by integer numbers
  text(floatNumber, mouseX+10, mouseY + 60);
  floatNumber = 8./3.; // float division is triggered by float numbers
  text(floatNumber, mouseX+10, mouseY + 80);
  floatNumber = 8./3; // float division is triggered by at least one float number
  text(floatNumber, mouseX+10, mouseY + 100);
}
