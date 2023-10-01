class roach
{
  float x, xspeed;
  float y, yspeed;
  float speed;
  float heading;
  
  roach(float tempX, float tempY) {
    x = tempX;
    y = tempY;
    speed = 3 + random(1);
    heading = random(360);
    xspeed = cos(heading)*speed;
    yspeed = sin(heading)*speed;
  }
  
  void run()
  {
    x += xspeed;
    y += yspeed;
    heading = atan2(yspeed, xspeed);
    
    if (x < 0 || x > width) 
    {
         xspeed = -xspeed;
    }
    
    if (y < 0 ||y > height) 
    {
         yspeed = -yspeed;
    }
    
    pushMatrix();
      translate(x, y);
      rotate(heading);
    
      stroke(0);
      fill(#B98522);
      
      ellipse(0, 0, 22, 8);
      line(11, 0, 16, -5);
      line(11, 0, 16, 5);
    popMatrix();
  }
}
