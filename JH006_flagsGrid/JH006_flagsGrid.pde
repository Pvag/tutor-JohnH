// This sketch draws a grid of Netherlands flags

void setup() {
  size(600, 400);
    
  noStroke();
}

void draw() {
  background(0);
  
  gridOfNetherlandsFlags(4, 3);
}

// draws a grid of Netherlands flags
//
// nFlagsInRow is the number of flags in a row
// nRows is the number of rows of flags
void gridOfNetherlandsFlags(int nFlagsInRow, int nRows) {
  int flagHeight = 20;
  int verticalSpaceBetweenFlags = 4;
  
  for (int i = 0; i < nRows; i++) {
    rowOfNetherlandsFlags(mouseX, mouseY + i*(flagHeight + verticalSpaceBetweenFlags), flagHeight, nFlagsInRow, 9);
  }
}

// draws a row of Netherlands flags
//
// nFlags is the number of flags in the row
// horizontalSpaceBetweenFlags is the spacing between flags
void rowOfNetherlandsFlags(int x0, int y0, int flagHeight, int nFlags, int horizontalSpaceBetweenFlags) {
  int flagWidth = 2*flagHeight;
  
  for (int i = 0; i < nFlags; i = i + 1) {
    int x = x0 + i*(flagWidth + horizontalSpaceBetweenFlags);
    netherlandsFlag(x, y0, flagHeight);  
  }
}

// draws the flag of Netherlands
//
// x is the x coordinate of the top left corner of the flag
// y it the y coordinate of the top left corner of the flag
void netherlandsFlag(int x, int y, int flagHeight) {
  noStroke(); // we don't want borders around the 3 rectangles that make up our flag
  
  int flagWidth = 2*flagHeight;

  int redPartHeight = flagHeight/3; 
  int whitePartHeight = flagHeight/3;
  int bluePartHeight = flagHeight/3;
  
  int topLeftCornerFlag_x = x;
  int topLeftCornerFlag_y = y; 
  
  int topLeftCornerRedRectangle_x = topLeftCornerFlag_x;
  int topLeftCornerRedRectangle_y = topLeftCornerFlag_y;
  
  
  int topLeftCornerWhiteRectangle_x = topLeftCornerFlag_x;
  int topLeftCornerWhiteRectangle_y = topLeftCornerFlag_y + redPartHeight ;
  
  int topLeftCornerBlueRectangle_x = topLeftCornerFlag_x;
  int topLeftCornerBlueRectangle_y = topLeftCornerFlag_y + redPartHeight + whitePartHeight;
  
  // red rectangle on top 
  fill(255,0,0); // red
  rect(topLeftCornerRedRectangle_x,topLeftCornerRedRectangle_y, flagWidth, redPartHeight); // x,y, width, height 
  // white rectangle below
  fill(255); //white 
  rect(topLeftCornerWhiteRectangle_x,topLeftCornerWhiteRectangle_y, flagWidth, whitePartHeight);
  // blue rectangle below
  fill(0,0,255); // blue 
  rect(topLeftCornerBlueRectangle_x,topLeftCornerBlueRectangle_y , flagWidth, bluePartHeight);
  
}
