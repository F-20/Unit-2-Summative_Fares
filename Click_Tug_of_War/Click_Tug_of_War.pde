// Here is my music
import processing.sound.*;
SoundFile file;
String music = "Wake Of The Martyrs.mp3";
String music1; 
int x;
int y;


void setup()
{
  music1 = sketchPath("Wake Of The Martyrs.mp3");
  file = new SoundFile(this, music1);
  file.jump(10);
  file.play();
  // Here I size my screen to 800, 800. The code "P2D" makes the game render faster
  size(800,800,P2D);
  noStroke();
  x = 400;
  y = 400;
}

void draw()
{
  // Here's the background and the circle
  background(0,0,0);
  ellipse(x,y,100,100);
  
  // Now if Player 1 wins, then the screen changes to "Player 1 wins"
  if(x > 800)
    {
      background(255,255,255);
      textSize(50);
      fill(0,0,0);
      text("Player 1 wins", 400, 400);
    }
    
    // Here if player 2 wins, then a new screen comes up saying "Player 2 wins"
    if(x < 0)
    {
      background(255,255,255);
      textSize(50);
      fill(0,0,0);
      text("Player 2 wins", 400, 400);
    }
  
  // Here is the code for the cirlce to go left and right
  if(keyPressed)
  {
    if(keyCode == LEFT)
    {
      x=x-5;
    }
  
    if(keyCode == RIGHT)
    {
      x=x+5;
    }
  }
}
