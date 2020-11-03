Particle[] carl;
 void setup()   
 {     
   size(500,500);
   background(0);
   carl = new Particle[1000];
   for (int i = 0; i < carl.length; i++)
   {
     carl[i] = new Particle();
     carl[0] = new Oddball();
   }
 }   
 void draw()   
 {
   stroke(0);
   fill(0, 0, 0, 15);
   rect(0, 0, 500, 500);
   for (int i = 0; i < carl.length; i++)
   {
     carl[i].show();
   }
   for (int i = 1; i < carl.length; i++)
   {
     carl[i].move();
   }
 }  
 void mousePressed()
 {
   for (int i = 1; i < carl.length; i++)
   {
   carl[i].reset();
   }
 }
class Particle
{
  double myAngle, mySpeed, myX, myY;
  int myColor;
  Particle()
  {
    myColor = color((int)(Math.random()*56+200), (int)(Math.random()*56+200), (int)(Math.random()*56+200));
    myAngle = Math.random() * 2 * Math.PI;
    mySpeed = Math.random() * 10 + 3;
    myX = 250;
    myY = 250;
  }
  void show()
  {
    fill(myColor);
    stroke(myColor);
    ellipse((float)myX, (float)myY, 8, 8);
  }
  void move()
  {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }
  void reset()
  {
    myColor = color((int)(Math.random()*56+200), (int)(Math.random()*56+200), (int)(Math.random()*56+200));
    myAngle = Math.random() * 2 * Math.PI;;
    mySpeed = Math.random() * 10 + 3;
    myX = 250;
    myY = 250;
    background(0);
  }
}
class Oddball extends Particle
{
  Oddball()
  {
    myColor = color(255, 0, 0);
    myX = 250;
    myY = 250;
  }
  void show()
  {
    fill(myColor);
    stroke(myColor);
    strokeWeight(5);
    ellipse((float)myX, (float)myY, 65, 65);
    stroke(0);
    strokeWeight(4);
    line(232, 240, 265, 240);
    line(240, 240, 240, 265);
    line(257, 240, 257, 265);
    stroke(0, 255, 0);
    noFill();
    arc(285, 215, 70, 70, PI, PI+QUARTER_PI);
    fill(0, 255, 0);
    arc(223, 222, 70, 70, PI+HALF_PI, PI+QUARTER_PI+QUARTER_PI+QUARTER_PI, CHORD);
  }
}
