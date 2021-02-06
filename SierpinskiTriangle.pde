int a = 100;
public void setup()
{
  size(400,400);
  background(0);
}
public void draw()
{
  sierpinski(0,0,a);
}
public void mouseClicked()
{
 a+= 100;
}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 5){
    triangle(x, y, x+len, y, x+len/2, y+len); 
  }
  else{
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/2,y+len/2,len/2);
  }
}
