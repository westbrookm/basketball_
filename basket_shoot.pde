String saved = "";
String typing = "";
PFont f;
PFont font;
String timeText = "";
boolean isAlive = true;
int score=0;
int maxTime = 60;
int currentTime;
int currentScore;
void setup() 
{
  fullScreen();
  f = createFont("Arial", 16);
  font = createFont("Arial", 100);
  background(255);
  fill(0);
  currentTime = maxTime;
}

void draw()
{
  background(255);
  int indent = 25; 
  timeText = "" + currentTime;
  currentTime=maxTime-int(millis()/1000);
  text(timeText, width/2, 50);
  textFont(f);  
  fill(0);  
  text("Click in this sketch and type. \nHit return to save what you typed.", indent, 40);  
  text(typing, indent, 90);  
  text(saved, indent, 130);
  
                                   
 
    if (currentTime<0)
  {
    text("GAME OVER", width/2, height/2);
    noLoop();
  }
}

void keyPressed()
{
  if (key == ' ') 
  {    
   score=score+2;
  }
}