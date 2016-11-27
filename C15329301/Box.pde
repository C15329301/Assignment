class Box
{
  void DisplayBox(int i)
  {
    fill(0,0,0, 100);
    rect(i*boxW1 + (i-1)*boxW2, 0, (i-1)*boxW1 + boxW2, height);
  }  
}