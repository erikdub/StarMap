//Star Class is created and sets variables
class Star()
{
  //Creating variables
  int Hab;
  String DisplayName;
  float Distance;
  float Xg, Yg, Zg;
  float AbsMag;
  
  //The Star function gives rows to our variables
  Star(TableRow row)
  {
    this.Hab = row.getInt("Hab?");
    this.DisplayName = row.getString("Display Name");
    this.Distance = row.getFloat("Xg");
    this.Xg = row.getFloat("Yg");
    this.Yg = row.getFloat("Zg");
    this.AbsMag = row.getFloat("AbsMag");
  }
}