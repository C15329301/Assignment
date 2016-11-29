import ddf.minim.*;

PImage background;
PShape star;
PShape Icon;
PShape Health;

Minim minim;
AudioPlayer scream, Slurp;


Icon ic;
Icon ic1;
Box b1, b2;
Star star1;
Cursor mouse;

int UI = 0;
int equip = 0;
float equip2 = 0;
int selection = 0;
int selectionM = 0;

float posX;
float posY;

int Hp = 150;

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

int tHr = 0, Hr = 0, tMin = 0, Min = 0;

void setup()
{
  noCursor();
  ic = new Icon();
  ic1 = new Icon();
  b1 = new Box();
  b2 = new Box();
  star1 = new Star();
  mouse = new Cursor();
  size(1100,800);
  background = loadImage("Skyrim.jpg"); 
  
  minim = new Minim(this);
  scream = minim.loadFile("Scream.mp3");
  Slurp = minim.loadFile("Slurp.mp3");

}

void draw()
{
  
  if(keyPressed)
  {
    if(key == 'm' || key == 'M')
    {
        UI = 1;
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
          break;
          case 1:
            Menu1();
          break;
          case 2: 
            NoMenu();
            options();
          break;
          case 3:
            NoMenu();
            magic();
          break;
          case 4:
            NoMenu();
            Radar();
          break;
          case 5:
            NoMenu();
          break;
          
        }
        noFill();
        strokeWeight(4);
        rect(50, 20, 200, 50);
        fill(#0F7120);
        rect(50, 20, Hp, 50);
        fill(white);
        textSize(20);
        text("HEALTH", 100, 50);
        
        fill(white);
        rect(50, 130, 200, 50);
        fill(0);
        textSize(20);
        text(tHr + Hr + ":"+ tMin + Min, 100, 165);
        
        fill(#C1191C);
        rect(900, 20, 100, 100);
        fill(white);
        text("-10HP", 920, 80);
        if(mouseX > 900 && mouseX < 1000 && mouseY > 20 && mouseY < 120)
        {
          if(mousePressed)
          {
            if(Hp > 0)
            {
              Hp = Hp - 10; 
              scream.rewind();
              scream.play();
            }
          }
        }
        if(Hp == 0)
        {
          exit();
        }
        mouse.Update();
}
        

  void NoMenu()
  {
    image(background, 0, 0);
  }
  void Start()
  {
    image(background, 0, 0);
    fill(white);
    textSize(60);
    text("Sci(rim) UI", width/3, height/16);
    textSize(40);
    text("Press 'm' or 'x' To Exit", width/3.5, height/9);
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
    
    star1.rotateS();
    
    textSize(30);
    fill(255);
    text("ITEMS", width/2 + hig1, height/2 + 15);
    text("MAGIC", width/2 - 310, height/2 + 15);
    text("LEVEL UP", width/2 - 65, height/2 - hig1);
    text("TIME", width/2 - 40, height/2 + hig1 + 10);
    
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
        textSize(textSize);
        fill(255);
        text("All", width/12, height/len + div);
        
          if((mouseY > height/len + boxW1 && mouseY < height/len + div2 && mouseX > boxW1 && mouseX < boxW2) || selection == 1)
          {
            triangle(width/14, height/len + halfW, width/20, height/len + quartW, width/20, height/len + halfW+quartW);
            if(mousePressed)
            {
               selection = 1;
            }
        
        if(selection == 1)
        {
          AllI();
        }
      }
  }
  void magic()
  {
    String[] Magic = loadStrings("Magic.txt");
    len = Magic.length;
  
  
    tint(150);
    int div = 60;
    
    
    stroke(255);
    fill(0,0,0, 25);
    b2.DisplayBox(1);

        strokeWeight(5);
        textSize(textSize);
        fill(255);
        text("All", width/12, height/len + div);      
          if((mouseY > height/len + boxW1 && mouseY < height/len + div2 && mouseX > boxW1 && mouseX < boxW2) || selectionM == 1)
          {
            triangle(width/14, height/len + halfW, width/20, height/len + quartW, width/20, height/len + halfW+quartW);
            if(mousePressed)
            {
               selectionM = 1;
            }
          }
          
          if(selectionM == 1)
          {
            AllM();
          }

  }
 
  void AllI()
  {
    String[] AllI = loadStrings("All.txt");
    len = AllI.length;
    int div = 85;
    for(String s2: AllI)
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
      for(int i = 1; i<= len; i++)
      {
           if(mouseY > height/len + (i-1)*div2 && mouseY < height/len + i*div2)
           {
             float x = height/len + 180;
             float y = height/len + i*60 + 10;
             ic.position(x, y);
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
               if(i==4)
               {
                 if(Hp < 200)
                 {
                   Hp = Hp + 20;
                   Slurp.rewind();
                   Slurp.play();
                 }
               }
              
             }
             
           }
           
      }
   }
  }
  void AllM()
  {
    String[] allM = loadStrings("AllMagic.txt");
    int lengt = allM.length;
    int divis = 85;
    for(String s: allM)
    {
        strokeWeight(5);
        textSize(textSize);
        fill(white);
        text(s, width/2.80, height/lengt + divis);
        divis += textH;
    }
    
    stroke(255);
    fill(0,0,0, 50);
    b2.DisplayBox(2);
    
    if(mouseX > 2*boxW1 + boxW2 && mouseX < 2*boxW1 + boxW2 || selectionM > 0)
    {
      for(int i = 1; i<= lengt; i++)
      {
           if(mouseY > height/lengt + (i-1)*div2 && mouseY < height/lengt + i*div2)
           {
             float x1 = height/lengt + 180;
             float y1 = height/lengt + i*60 + 10;
             ic1.position(x1, y1);
             if(mousePressed)
             {
               if(i==1)
               {
                 //Fireball
                 equip2 = 1;
               }
               if(i==2)
               {
                 //Shock
                 equip2 = 2;
               }
               if(i==3)
               {
                 //Moon Walk
                 equip2 = 3;
               }
               if(i==4)
               {
                 //Ice
                 equip2 = 4;
               }

             }
             
           }
      }
   }
  }
  void Radar()
{
  
  float cx = width / 2;
  float cy = height / 2;
  float speed = 0.01; // How fast we want the radar to spin  
  float theta = map(mouseY, 0, height, 0, TWO_PI);
  float radius = 200;
  
  stroke(0);
  fill(0,255,0);
  // Draw the outside of the radar
  ellipse(cx, cy, radius * 2, radius * 2);

    float lineTheta = theta;
    stroke(0, 255);
    float x = cx + sin(lineTheta) * radius;
    float y = cy - cos(lineTheta) * radius;
    line(cx, cy, x, y);
    
    // An arc might be an even better solution
  
}
  
     