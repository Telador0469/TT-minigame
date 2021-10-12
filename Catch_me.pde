int x = 475;
int y = 275;
int w = 50;
int h = 50;
boolean b = false;

void setup()
{
  size(1000, 600);    
  stroke(34,139,34);          
  fill(0,255,0);
}

void draw()
{
  
  background(0);
  rect (x,y,w,h);
  
  if (keyCode == UP) 
   {
      y= y-3;
   }
  
  if (keyCode == DOWN) 
   {
      y= y+3;
   }
   if (keyCode == LEFT) 
   {
      x=x-3;
   }
   if (keyCode == RIGHT) 
   {
      x=x+3;
   }
   
   if (b == true)
   {
      text ("GAME OVER",463,250); 
   }
   
   
   if(x<=0 || x+w >=1000 || y <= 0 || y+h>=600)
   {
     stroke(220,20,60);
     fill(255,0,0);
     keyCode = ALT;
     b = true;
   }
}

void mouseClicked()
{
   if (x < mouseX && mouseX < x + w &&
       y < mouseY && mouseY< y + h )
       {
          stroke(220,20,60);
          fill(255,0,0);
          keyCode = ALT;
          b = true;
       }
    
}
