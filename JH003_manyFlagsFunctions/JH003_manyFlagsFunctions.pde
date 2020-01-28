// This code shows an example of better code, using functions, instead of copy/paste,
// as opposed to the project named ManyFlags .

void setup() {
  size(600, 400);
    
  noStroke();
}

// We get the same result, but the code is much shorter (half the lines than before) and easier to modify now!
// Imagine if we wanted to change the width to height ratio of each flag: we would have
// to change many lines of code, meanwhile now we only change the first line inside the function (indonesianFlag)
// and each flag gets created with a different aspect ratio.

void draw() {
  background(0);
  
  // #1
  indonesianFlag(mouseX, mouseY, 100); // we make simple calls to the function that knows how to draw the flag of Indonesia
  
  // ------------------------
  
  // OTHER FLAGS OF INDONESIA - in different sizes, at different positions - the same code is used over and over, with copy/paste (BAD!)
  
  // #2
  //
  indonesianFlag(10, 10, 50); // we change parameters in the input to the function and we get a flag positioned somewhere else

  // #3
  //
  // about the whole flag
  indonesianFlag(10, 100, 20);

  // #4
  //
  indonesianFlag(200, 100, 180);  
}

// Here's a function that creates an indonesian flag: it doesn't make sense to repeat these instructions
// over and over, through our code: we just specify it once and then we call it using a function call which is only a single line!
//
// Parameters are the x and y coordinates of the top left corner of the whole flag and the flag height
void indonesianFlag(int x, int y, int flagHeight) {
  int flagWidth = 2*flagHeight;

  int redPartHeight = flagHeight/2;
  int whitePartHeight = flagHeight/2;
  
  // about the whole flag
  int topLeftCornerFlag_x = x;
  int topLeftCornerFlag_y = y;
  
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
}
