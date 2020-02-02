// creates a bouncing ball
// rebounds at edges of the canvas
// TODO refactor using functions
// NEXT sketch will be based upon this, but with 20 balls (we'll need arrays)
// NEXT NEXT sketch will have 20 balls, but will use objects

int hSpeed, vSpeed; // horizontal and vertical speeds
int ballDiam;
int x, y;

void setup() {
  size(600, 400);
  noStroke();
  fill(0, 255, 180);

  // initial position of the ball
  x = 100;
  y = 20;
  
  // initialize speeds
  hSpeed = 1;
  vSpeed = 2;
  
  ballDiam = 24;
}

void draw() {
  background(255);

  // TODO: REFACTOR using functions
  //updatePosition();
  //drawUpdatedBall();
  
  ellipse(x, y, ballDiam, ballDiam);
  // update the position of the ball
  
  // check vertical borders
  if (x >= width - ballDiam/2 || x <= ballDiam/2) {
    hSpeed = -hSpeed;
  }
  // check horizontal borders
  if (y >= height - ballDiam/2 || y <= ballDiam/2) {
    vSpeed = -vSpeed;
  }
  
  x += hSpeed; // '+=' is shorthand for: 'x = x + hSpeed'
  y += vSpeed;
}
