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
int time = 0;
int action;
void setup() 
{
  fullScreen();
  f = createFont("Arial", 120);
  font = createFont("Arial", 120);
  f = createFont("Arial" , 120);
  font = createFont("Arial" , 120);
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
  text(timeText, 1100, 90);
  textFont(f);  
  fill(0);

  text("Score: " + score, indent, 90);

  if (currentTime<0)
  {
    text("GAME OVER", 300, height/2);
    noLoop();
  }
       
  println(time + ", " + millis());
  
  if(millis() - 4000 > time) time = millis();                      
}

void keyPressed()
{
  if (key == ' ' && time < millis()) 
  {    
      time +=   4000;
      score=score+2;   
  }
}