// variables
  // types
    // numerical operations between different types
      // different operators are triggered according to the types
// console to do some debugging (using println - caveman debugging)
// conditionals
// loops
// functions

void setup() {
  size(500, 280);
  //noLoop(); // only call draw() once, instead of continously
}

void draw() {
  
  background(0);

  // ### PRECISION and COMPUTATIONS ###

  int n1 = 5;
  int n2 = 3;
  println(n1 + n2); // + here is the integer summation operator
  
  float f1 = 4.2;
  float f2 = 2.3;
  println(f1 + f2); // + here is the float summation operator
  
  // having the same name for different operators (e.g. "+") is called overloading

  // precedence is given to the number with more precision - i.e. float and int --> int will be tranformed into float
  // before the operator is applied

  // n1 is transformed into float (with .000000 decimal part); then the float summation operator is called,
  // because both operands are of type float now
  println(n1 + f1);

  // ### FUNCTIONS ###
  //
  // function declaration
  // function call
  float avg1 = average(f1, f2); // (TDD style - Test Driven Development)
  println("Should give 3.25. Result: " + avg1);
  final float correctAvg = 3.25; // this is a constant: with 'final' we avoid the error of changing it!
  // operator ! is the NOT operator: it negates what comes after ( '!=' means 'not equal to' )
  if (avg1 != correctAvg) { // AVOID equating floats (or not equating: i mean comparing them this way == or != )   <-- **
    println("ERROR! Result: " + avg1 + " is different from correct result: " + correctAvg);
  }
  else {
    println("CONGRATULATIONS: average was computed correctly, according to the correct result: " + correctAvg);
  }
  
  // ** about comparing floats
  // Imagine we have run an algorithm in a function that gives a float as returned variable.
  // Imagine that what the algorithm does is to converge as close as possible to 0.
  // Maybe we will neve get to 0 exactly, but what we will use inside the algo. will be a variable called
  // 'tolerance' (usually 'tol') this way:
  // if (result < 0 + tol) return result;
  // if you do something like: 'result == 0.' // you will never get to this, probably
  // so this is why you should never compare result to 0 directly:
  // what we do instead, is something like:
  // if (result < tol) { then do something }  // tol is a small number, but not 0: it is your tolerance, you choose that
  // if (result == 0) // THIS IS BAD, if 'result' is a float
  
  // ### CONDITIONALS
  //
  // remember not to compare floats!
  
  // ### LOOPS
  // e.g. create a set of squares in a line
  final int squareSide = 20;
  final int nSquares = 3; // put as many constraints as we can inside your code!
  
  // this actually draws the squares
  for (int i = 0; i < nSquares; i++) {
    rect(i*(squareSide + mouseX), 20, squareSide, squareSide);
  }
}

// NOTE: n1 and n2 are just placeholders:
// the actual value is passed to these placeholders
// the moment the call is reached during execution
float average(float n1, float n2) {
  float avg = (n1 + n2) / 2.f; // notice the dot: it makes my intention more clear
  
  return avg; // this function returns a float
}
