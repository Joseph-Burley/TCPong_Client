//pong main

int width;
int height;
int rect_size = 20;
int x_pos;
int y_pos;
double x_speed;
double y_speed;
float rand_speed;
float rand_dir;

void setup()
{
  size(800, 600);
  width = 800;
  height = 600;
  
  rectMode(CENTER);
  x_pos = width/2;
  y_pos = height/2;
  rand_speed = random(5, 10);
  rand_dir = random(360);
  x_speed = (rand_speed*cos(radians(rand_dir)));
  y_speed = (rand_speed*sin(radians(rand_dir)));
}

void draw()
{
  background(255, 255, 255);
  fill(0,255,0);
  line(0,height/2,width,height/2);
  line(width/2,0,width/2,height);
  fill(255,0,0);
  rect(x_pos, y_pos, rect_size, rect_size);
  
  x_pos += (int)x_speed;
  y_pos += (int)y_speed;
  
  if(x_pos <= 0 || x_pos >= width)
  {
    giggle();
    x_speed *= -1;
  }
  if(y_pos <= 0 || y_pos >= height)
  {
    giggle();
    y_speed *= -1;
  }
  
  if(keyPressed)
  {
    if(key == 'a')
    {
      x_pos -= 5;
    }
    else if(key == 'd')
    {
      x_pos += 5;
    }
  }
}

void giggle()
{
  x_speed += random(.5);
  y_speed += random(.5);
}