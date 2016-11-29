class Radar
{
    
    
   Radar()
   {
    Radar = createShape();
    Radar.beginShape();
    Radar.stroke(0, 255, 0);
    Radar.strokeWeight(5);
    Radar.fill(0);
    ellipse(cx, cy, radius1 * 2, radius1 * 2);
    Radar.stroke(0, 255, 0);
    float x = cx + sin(theta) * radius1;
    float y = cy - cos(theta) * radius1;
    line(cx, cy, x, y);
    theta = theta + speed1;
    Radar.endShape();
   }


void dis()
{
   theta = theta + speed1;
   pushMatrix();
   translate(width/2, height/2);
   shape(Radar);
   popMatrix();
}
   

}