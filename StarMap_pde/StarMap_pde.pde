void setup()
{
  size(800, 800);
  loadData();
}

ArrayList<Star> stars = new ArrayList<Star>();

void draw()
{
  
}

void loadData()
{
  Table StarTable = loadTable("stars.txt", "header");
  
  for (TableRow row : StarTable.rows())
  {
    Star e = new Star(row);
    stars.add(e);
  }
}