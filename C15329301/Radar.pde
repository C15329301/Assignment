class Radar
{
  float speed = 0.01;
  int trailLength = 50;  
  float theta = 0;
  float cx, cy;
  float radius = 200;

  Radar()
  {
    cx = width/2;
    cy = height/2;

  }
  
  void update()
  {
    theta += speed;
  }
    
  void render()
  {
    stroke(0, 255, 0);
    fill(0);
    ellipse(cx, cy, radius * 2, radius * 2);
  
    float tranSP = 255.0f / trailLength;
    for(int i = 0 ; i < trailLength ; i ++)
    {
      float lineTheta = theta - (i * speed);
      stroke(0, 255 - (i * tranSP), 0);
      
      float x = cx + sin(lineTheta) * radius - 1;
      float y = cy - cos(lineTheta) * radius - 1;
      line(cx, cy, x, y);
      
    }
  }
}