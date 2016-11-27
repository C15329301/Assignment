class Cursor
{
  void Update()
  {
    pushMatrix();
    translate(mouseX, mouseY);
    stroke(200);
    fill(200);
    triangle(0, 0, 10, 30, 30, 20);
    popMatrix();
    
    
  }
}