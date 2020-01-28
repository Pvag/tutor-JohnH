// global variables declarations
int flagHeight;
int flagWidth;

void setup() {
  size(600, 400);
  
  // global variables initializations (first assignment)
  flagHeight = 100;
  flagWidth = 2*flagHeight;
  
  noStroke();
}

void draw() {
  background(0);

  // PAOLO'S FLAG
  
  int redPartHeight = flagHeight/2;
  int whitePartHeight = flagHeight/2;
  
  // about the whole flag
  int topLeftCornerFlag_x = mouseX;
  int topLeftCornerFlag_y = mouseY;
  
  // about the red part
  int topLeftCornerRedRectangle_x = topLeftCornerFlag_x;
  int topLeftCornerRedRectangle_y = topLeftCornerFlag_y;
  
  // about the white part
  int topLeftCornerWhiteRectangle_x = topLeftCornerFlag_x;
  int topLeftCornerWhiteRectangle_y = topLeftCornerFlag_y + redPartHeight;
  
  // red rectangle on top
  fill(255, 0, 0); // red
  rect(topLeftCornerRedRectangle_x, topLeftCornerRedRectangle_y, flagWidth, redPartHeight); // x, y, width, height (of the red rect)
  // white rectangle below
  fill(255); // white
  rect(topLeftCornerWhiteRectangle_x, topLeftCornerWhiteRectangle_y, flagWidth, whitePartHeight); 
  
  // JOHN'S FLAG
}
