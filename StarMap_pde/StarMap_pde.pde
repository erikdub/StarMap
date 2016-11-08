void setup()
{
  size(800, 800);
  loadData();
  printStars();
}

ArrayList<Star> stars = new ArrayList<Star>();

void loadData()
{
  Table StarTable = loadTable("stars.csv", "header");
  
  for (TableRow row : StarTable.rows())
  {
    Star e = new Star(row);
    stars.add(e);
  }
}
  
void printStars()
{
  for(int i = 0; i < stars.size(); i++)
  {
    Star e = stars.get(i);
    println(e);
  }//end for
}

void draw()
{
  
}