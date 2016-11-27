class Square
{
   Square()
   {
    int starW = 100;
    int starD = 20;
    star = createShape();
    star.beginShape();
    
    star.fill(50);
    star.stroke(white);
    star.strokeWeight(2);
    
    star.vertex(starW, 0);
    star.vertex(starD, starD);
    star.vertex(0, 0);
    star.vertex(0, starW);
    star.vertex(-starD, starD);
    star.vertex(0, 0);
    star.vertex(-starW, 0);
    star.vertex(-starD, -starD);
    star.vertex(0, 0);
    star.vertex(0, -starW);
    star.vertex(starD, -starD);
    star.vertex(0, 0);

    star.endShape(CLOSE);
   }
   void rotateS()
   { 
     float theta = map(mouseX, 0, width, 0, TWO_PI);
     pushMatrix();
     translate(width/2, height/2);
     rotate(theta);
     shape(star);
     popMatrix();
    }
}