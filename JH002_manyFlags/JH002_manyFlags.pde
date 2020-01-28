// This code shows an example of bad code, that uses copy/paste instead of using functions.
// See the project named ManyFlags_functions for a better way to accomplish the same result
// that this code achieves.

void setup() {
  size(600, 400);
    
  noStroke();
}

void draw() {
  background(0);

  // PAOLO'S FLAG
  
  // #1

  int flagHeight = 100;
  int flagWidth = 2*flagHeight;

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
  
  // ------------------------
  
  // OTHER FLAGS OF INDONESIA - in different sizes, at different positions - the same code is used over and over, with copy/paste (BAD!)
  
  // #2
  //
  // about the whole flag
  topLeftCornerFlag_x = 10;
  topLeftCornerFlag_y = 10;
 
  flagHeight = 50;
  flagWidth = 2*flagHeight;
  
  redPartHeight = flagHeight/2;
  whitePartHeight = flagHeight/2;

  // about the red part
  topLeftCornerRedRectangle_x = topLeftCornerFlag_x;
  topLeftCornerRedRectangle_y = topLeftCornerFlag_y;
  
  // about the white part
  topLeftCornerWhiteRectangle_x = topLeftCornerFlag_x;
  topLeftCornerWhiteRectangle_y = topLeftCornerFlag_y + redPartHeight;
  
  // red rectangle on top
  fill(255, 0, 0); // red
  rect(topLeftCornerRedRectangle_x, topLeftCornerRedRectangle_y, flagWidth, redPartHeight); // x, y, width, height (of the red rect)
  // white rectangle below
  fill(255); // white
  rect(topLeftCornerWhiteRectangle_x, topLeftCornerWhiteRectangle_y, flagWidth, whitePartHeight);

  // #3
  //
  // about the whole flag
  topLeftCornerFlag_x = 10;
  topLeftCornerFlag_y = 100;
 
  flagHeight = 20;
  flagWidth = 2*flagHeight;

  redPartHeight = flagHeight/2;
  whitePartHeight = flagHeight/2;

  // about the red part
  topLeftCornerRedRectangle_x = topLeftCornerFlag_x;
  topLeftCornerRedRectangle_y = topLeftCornerFlag_y;
  
  // about the white part
  topLeftCornerWhiteRectangle_x = topLeftCornerFlag_x;
  topLeftCornerWhiteRectangle_y = topLeftCornerFlag_y + redPartHeight;
  
  // red rectangle on top
  fill(255, 0, 0); // red
  rect(topLeftCornerRedRectangle_x, topLeftCornerRedRectangle_y, flagWidth, redPartHeight); // x, y, width, height (of the red rect)
  // white rectangle below
  fill(255); // white
  rect(topLeftCornerWhiteRectangle_x, topLeftCornerWhiteRectangle_y, flagWidth, whitePartHeight);

  // #4
  //
  // about the whole flag
  topLeftCornerFlag_x = 200;
  topLeftCornerFlag_y = 100;
 
  flagHeight = 180;
  flagWidth = 2*flagHeight;

  redPartHeight = flagHeight/2;
  whitePartHeight = flagHeight/2;

  // about the red part
  topLeftCornerRedRectangle_x = topLeftCornerFlag_x;
  topLeftCornerRedRectangle_y = topLeftCornerFlag_y;
  
  // about the white part
  topLeftCornerWhiteRectangle_x = topLeftCornerFlag_x;
  topLeftCornerWhiteRectangle_y = topLeftCornerFlag_y + redPartHeight;
  
  // red rectangle on top
  fill(255, 0, 0); // red
  rect(topLeftCornerRedRectangle_x, topLeftCornerRedRectangle_y, flagWidth, redPartHeight); // x, y, width, height (of the red rect)
  // white rectangle below
  fill(255); // white
  rect(topLeftCornerWhiteRectangle_x, topLeftCornerWhiteRectangle_y, flagWidth, whitePartHeight);
  
  // NOTICE that the code used to draw each flag is the same,only values change, but the code is the same!
  //        This is why functions have been invented: they use "dummy" variables in their definition, instead of the actual values
  //        and then we can call them passing the actual values, avoiding copy/pasting the same code many times!
  //        (Revised version, with functions in the project named ManyFlags_functions .
}
