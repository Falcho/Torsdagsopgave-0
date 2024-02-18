/*
 The code in this sketch will not compile, as it referes to varables which have not yet been declared
 Please complete task 5 to get this to compile.
 */
int circleSize;
int numberOfCircles;
float red=random(235,255);
float green=random(235,255);
float blue=random(235,255);
int counter=0;
int rowCounter=0;

void setup() {
  size(400, 400);
  smooth();


  numberOfCircles = 20;
  circleSize = width/numberOfCircles;
  ellipseMode(CORNER);
}
void draw() {
  int x;
  int y;



  x = circleSize*counter;
  y = circleSize*rowCounter;

  // Un-comment this line after completing step 6.a
  fill(red, green, blue);

  ellipse(x, y, circleSize, circleSize);

  // Explaining conditional assignments.
  // First part before the ?-mark, is a conditional.
  // If this is true, the value after the ?-mark will be assigned.
  // If not, the last value will.
  counter =  frameCount % numberOfCircles == 0 ? 0 : counter+1;
  rowCounter =  counter==0 ? rowCounter+1:rowCounter;


  // Explaining the modulus operator
  // Modulus is what is left when you divide one int with another int.
  // 1 % 3 = 1 (3 people can't share 1 apple without cutting it, so 1 apple is left)
  // 2 % 3 = 2
  // 3 % 3 = 0

  //Add the code for 6.c here
  /*Koden her vælger en ny farve i hver linje inden for en specifik range
   if (counter == 0) {
   red = (red + 255 - 16)%255;
   green = (green +255 - 32)%255;
   blue = (blue + 255 - 8)%255;
   }*/

  /*Koden her genere en hver nye linje med en tilfældig farve
   if (counter == 0) {
   red = int(random(255));
   green = int(random(255));
   blue = int(random(255));
   }*/

   //Koden her ændre farven i hver nye linje i en gradient
   if (counter == 0) {
   red = red-15;
   green = green-10;
   blue = blue-5;
   }

  /*Koden her ændre KUN farven i den første circle i hver nye linje
  red = frameCount % numberOfCircles == 0 ? int(random(255)) : 255;
  green = frameCount % numberOfCircles == 0 ? int(random(255)) : 255;
  blue = frameCount % numberOfCircles == 0 ? int(random(255)) : 255;*/
}
