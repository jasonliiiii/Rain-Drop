# Rain-Drop
PFont myFont;
int score = 0; 
float y = 25;
float x = random(25, 775);
float s = 5;
float red = 100;
float green = 19;
float blue = 48;
int status = 0;

void setup(){
  
  size(800,800);
  myFont = createFont("Anonymous-48",20);
  textFont(myFont);
    
}
void draw(){
  background(red,green,blue);
  fill(250,243,35);
  ellipse(x,y,50,50);
  text(score, 10, 30);
  if (status == 0){
  if (y > 800 + 25) {
    y = 0 - 25;
    x = random(25, 775);
    s = s + 1;
    background (red, green, blue);
       blue = blue + 10; 
       score = score -1;
  }
  else if (y <= 800 +25){
    y = y + s;
  }  
  fill(29,203,62);
    rect(mouseX - 35, 750, 70,20);
  
   if (y >= 725 & x > mouseX - 35 & x < mouseX + 35 ){
     y = 0 -25;
     x = random(25,775);
     s = s+1;
     background (red, green, blue);
     red = red + 10;
     score = score + 1; 
   }
  }
   if (score >= 10) {
     textFont(myFont, 32);
     textAlign(CENTER);
     text("You win", width/2, height/2);
     status = 1;    
}  
    else if (score <=-10){
    textFont(myFont, 32);
    textAlign(CENTER);
    text("You Lose", width/2, height/2); 
    status = 1;
}
}
