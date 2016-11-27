PImage[] images = new PImage[3];
PImage background;
PShape star;

Box b1;
Square square;
Cursor mouse;

int UI = 0;
int equip = 0;
int selection =0;


float wid = 50;
float hig = 200;
float hig1 = hig + 20;
int a = 100, b = 100, c = 100, d = 100;
int white = 255;
int grey = 100;
int radius = 150;
   
String s1, s2;
int boxW1 = 20;
int boxW2 = 300;
int textH = 60;
int div2 = 80;
int halfW = 50;
int quartW= 25;
int text = 100;
int textSize = 30;
float len;

void setup()
{
  noCursor();
  b1 = new Box();
  square = new Square();
  mouse = new Cursor();
  size(1100,800);
  background = loadImage("Skyrim.jpg"); 
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
        Mouse();
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
            Start();
            mouse.Update();
          break;
          case 1: 
            Menu1();
            mouse.Update();
          break;
          case 2: 
            NoMenu();
            options();
            mouse.Update();
          break;
          case 3: 
            NoMenu();
            mouse.Update();
          break;
          case 4:
            NoMenu();
            mouse.Update();
          break;
          case 5:
            NoMenu();
            mouse.Update();
          break;
          
        }
}
        
  void Mouse()
  {
     //Draw Mouse
  }

  void NoMenu()
  {
    image(background, 0, 0);
  }
  void Start()
  {
    image(background, 0, 0);
    fill(0);
    textSize(60);
    text("Skyrim UI", width/2.5, height/16);
    textSize(40);
    text("Press 'm' or 'x' To Exit", width/2.9, height/9);
  }
  void Menu1()
  {
    tint(100);
    image(background, 0, 0);
    strokeWeight(5);
    stroke(white);
    noFill(); 
    
    
    fill(b);
    triangle(width/2, height/2 - wid, width/2 - hig, height/2, width/2, height/2 + wid);
    fill(a);
    triangle(width/2, height/2 + wid, width/2 + hig, height/2, width/2, height/2 - wid);
    fill(c);
    triangle(width/2 + wid, height/2, width/2, height/2 + hig, width/2 - wid, height/2);
    fill(d);
    triangle(width/2 - wid, height/2, width/2, height/2 - hig, width/2 + wid, height/2);
    
    square.rotateS();
    
    textSize(30);
    fill(255);
    text("ITEMS", width/2 + hig1, height/2 + 15);
    text("MAGIC", width/2 - 310, height/2 + 15);
    text("LEVEL UP", width/2 - 65, height/2 - hig1);
    text("TIME", width/2 - 40, height/2 + hig1);
    
    if(mouseX >= width/2 + wid*2 && mouseX <= width/2 + 350 && mouseY <= height/2 + 30 && mouseY >= height/2)
    {
       a = white;
       b = grey;
       c = grey;
       d = grey;
       if(mousePressed)
       {
         //items
         UI = 2;
       }
    }
    else
    {
       a = grey; 
    }
    if(mouseX <= width/2 - wid*2 && mouseX >= width/2 - 350 && mouseY <= height/2 + 30 && mouseY >= height/2)
    {
       b = white;
       a = grey;
       c = grey;
       d = grey;
       if(mousePressed)
       {
         UI = 3;
         //magic
       }
    }
    else
    {
       b = grey; 
    }
    if(mouseX <= width/2 + width/37 && mouseX >= width/2 - width/55 && mouseY <= height/2 + height/2.85 && mouseY >= height/2 + height/8)
    {
       c = white;
       a = grey;
       b = grey;
       d = grey;
       if(mousePressed)
       {
         UI = 4;
         //Time
       }
    }
    else
    {
       c = grey; 
    }
    if(mouseX <= width/2 + width/37 && mouseX >= width/2 - width/55 && mouseY >= height/2 - height/2.85 && mouseY <= height/2 - height/8)
    {
       d = white;
       a = grey;
       b = grey;
       c = grey;
       if(mousePressed)
       {
         UI = 5;
         //Lvl up
       }
    }
    else
    {
       d = grey; 
    }
    
}
  void options()
  {
    String[] Items = loadStrings("Items.txt");
    len = Items.length;
  
  
    tint(150);
    int div = 60;
    
    
    stroke(255);
    fill(0,0,0, 25);
    b1.DisplayBox(1);

    for(String s1: Items)
    {
        strokeWeight(5);
        textSize(textSize);
        fill(255);
        text(s1, width/12, height/len + div);
        div += textH;
    }
        
          if((mouseY > height/len + boxW1 && mouseY < height/len + div2 && mouseX > boxW1 && mouseX < boxW2) || selection == 1)
          {
            triangle(width/14, height/len + halfW, width/20, height/len + quartW, width/20, height/len + halfW+quartW);
            if(mousePressed)
            {
               selection = 1;
            }
          }
          if((mouseY > height/len + div2 && mouseY < height/len + 2*div2 && mouseX > boxW1 && mouseX < boxW2) || selection == 2)
          {
            triangle(width/14, height/len + halfW + textH, width/20, height/len + quartW + textH, width/20, height/len + halfW + quartW + textH);
            if(mousePressed)
            {
               selection = 2;
            }
          }
          if((mouseY > height/len + 2*div2 && mouseY < height/len + 3*div2 && mouseX > boxW1 && mouseX < boxW2) || selection == 3)
          {
            triangle(width/14, height/len + halfW + 2*textH, width/20, height/len + quartW + 2*textH, width/20, height/len + halfW + quartW + 2*textH);
            if(mousePressed)
            {
               selection = 3;
            }
          }
          if((mouseY > height/len + 3*div2 && mouseY < height/len + 4*div2 && mouseX > boxW1 && mouseX < boxW2) || selection == 4)
          {
            triangle(width/14, height/len + halfW + 3*textH, width/20, height/len + quartW + 3*textH, width/20, height/len + halfW + quartW + 3*textH);
            if(mousePressed)
            {
               selection = 4;
            }
          }
        switch(selection) 
        {
          case 1: 
            All();
          break;
          case 2: 
            Weapons();
          break;
          case 3: 
            Apparel();
          break;
          case 4: 
            Food();
          break;
        }
      }
 
  void All()
  {
    String[] All = loadStrings("All.txt");
    len = All.length;
    int div = 60;
    for(String s2: All)
    {
        strokeWeight(5);
        textSize(textSize);
        fill(white);
        text(s2, width/2.80, height/len + div);
        div += textH;
    }
    
    stroke(255);
    fill(0,0,0, 50);
    b1.DisplayBox(2);
    
    if(mouseX > 2*boxW1 + boxW2 && mouseX < 2*boxW1 + boxW2 || selection > 0)
    {
      for(int i = 0; i<= len; i++)
      {
           if(mouseY > height/len + (i-1)*div2 && mouseY < height/len + i*div2)
           {
             if(mousePressed)
             {
               if(i==1)
               {
                 equip = 1;
               }
               if(i==2)
               {
                 equip = 2;
               }
               if(i==3)
               {
                 equip = 3;
               }

             }
             
           }
           
      }
   }
   line(100*equip, 100*equip, 0, 0);
  }
   
  
 
  void Weapons()
  {
    b1.DisplayBox(2);
  }
  
  void Apparel()
  {
    b1.DisplayBox(2);
  }
  
  void Food()
  {
    b1.DisplayBox(2);
  }
  
     