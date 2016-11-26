PImage[] images = new PImage[10];
PImage background, Cursor, Icon;
Mouse mous = new Mouse();
Menu m1 = new Menu();
Items item = new Items();

int UI = 0;
int selection = 0;

void setup()
{
  size(1100,800);
  Cursor = loadImage("Cursor.png");
  background = loadImage("Skyrim.jpg"); 
  noCursor();
  smooth();
  for (int i = 1; i< images.length; i++)
  {
     images[i] = loadImage( i + ".png" );
  }

}

void draw()
{
  
  if(keyPressed)
  {
    if(key == 'm' || key == 'M')
    {
        UI = 1;
        mous.update();
    }
  }
  if(keyPressed)
  {
    if(key == 'x' || key == 'X')
    {
        exit();
    }
  }
  switch(UI) 
        {
          case 0: 
            m1.Start();
            mous.update();
          break;
          case 1: 
            m1.Menu1();
            mous.update();
          break;
          case 2: 
            m1.NoMenu();
            item.options();
            mous.update();
          break;
          case 3: 
            m1.NoMenu();
            mous.update();
          break;
          case 4:
            m1.NoMenu();
            mous.update();
          break;
          case 5:
            m1.NoMenu();
          break;
          
        }

}