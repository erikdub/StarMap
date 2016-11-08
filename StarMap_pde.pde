//Erik Stenberg C15495352 DT282/2 Group E
void setup()
{
  size(800, 800);
  loadData();
  printStars();
  background(0);
}

//ArrayList created for stars
ArrayList<Star> stars = new ArrayList<Star>();

//loadData function created to load in data from CSV file
void loadData()
{
  Table StarTable = loadTable("stars.csv", "header");
  
  for (TableRow row : StarTable.rows())
  {
    Star e = new Star(row);
    stars.add(e);
  }
}

//printStars is a function that prints the contents of the array list after loaded
void printStars()
{
  for(int i = 0; i < stars.size(); i++)
  {
    Star e = stars.get(i);
    println(e);
  }//end for
}

//This function draws the grid. It is declared in draw()
void drawGrid()
{
  float x = 50;
  float y = 50;
  float space = 70;
  boolean fline = false;
  float parsecs = -5;
  
  stroke(150, 0 , 150);
  
  while(y <= height-50)
  {
    while(x <= width-50)
    {
      if(x+space > width)
      {
        break;
      }
      
      line(x, y, x+space, y);
      
      if(fline == false)
      {
        fill(150, 0 , 150);
        text(parsecs, x-18, y-10);
        parsecs++;
      }
      
      x+= space;
    }
    
    x = 50;
    y += space;
    fline = true;
  }
  
  fline = false;
  parsecs = -4;
  x = 50;
  y = 50;
  
  while(x <= width-50)
  {
    while(y <= height-50)
    {
      if(y+space > height)
      {
        break;
      }
      
      line(x, y, x, y+space);
      
      if(fline == false)
      {
        fill(150, 0, 150);
        text(parsecs, x-45, y+75);
        parsecs++;
      }
      
      y+= space;
    }
    y = 50;
    x += space;
    
    fline = true;
  }
}

//This function is to draw the stars and is also declared in draw()
void drawStars()
{
  for (int i = 0; i < stars.size(); i++)
  {
    Star e = stars.get(i);
    
    float x = map (e.Xg, -5, 5, 50, width-50);
    float y = map (e.Yg, -5, 5, 50, height-50);
    
    stroke(255, 255, 0);
    line (x, y, x+3, y);
    line (x, y, x-3, y);
    line (x, y, x, y+3);
    line (x, y, x, y-3);
    
    noFill();
    stroke(255, 0, 0);
    ellipse(x, y, e.AbsMag, e.AbsMag);
    
    fill(255);
    textAlign(LEFT, CENTER);
    text(e.DisplayName, x+10, y-2);
  }
}

void draw()
{
  drawGrid();
  drawStars();
}