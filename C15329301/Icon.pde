class Icon
{
   Icon()
   {
     
    Icon = createShape();
    Icon.beginShape();
    
    Icon.fill(50);
    Icon.stroke(white);
    Icon.strokeWeight(2);
    
    Icon.vertex(0, 0);
    Icon.vertex(-20, 20);
    Icon.vertex(-20, -20);
    
    Icon.endShape(CLOSE);
    
   }
   void position(float x, float y)
   { 
     pushMatrix();
     translate(x, y);
     shape(Icon);
     popMatrix();
    }
}