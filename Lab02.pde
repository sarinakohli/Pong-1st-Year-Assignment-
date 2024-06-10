int x=250; //Starting position of the ball X
int direction_x=2; //Speed of the ball X
int y=150; //Starting position of the ball Y
int direction_y=2;//Speed of the ball Y
int lives=3;
int score=0;
void setup ()
{
 size(400,400); 
}
void draw()
{
 background(255,255,255); 
 fill(0,255,0); 
 rect(380,mouseY-60,20,120); 

 fill(0,0,255);
 ellipse(x,y,20,20);

 x=x+direction_x; 
if(x<10) direction_x=-direction_x; 
  if(x>(width-10)) 
 {
 direction_x=-direction_x; 
 lives--; 
 if(lives==0) exit();
 }
  
  y=y+direction_y;
 if(y<10) direction_y=-direction_y;
  if(y>(height-10)) direction_y=-direction_y;
 

 if((x>(width-30))&&(abs(mouseY-y)<60)) 
 {
   x=width-30;
 direction_x=-direction_x; 
 score++; 
 }

 textSize(32); //Text of score and lives 
 fill(0,0,255); 
 text(score, 10, 30);
 text(lives,width-30, 30);


} 
