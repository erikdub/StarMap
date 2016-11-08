//Star Class is created and sets variables
class Star
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
    this.Distance = row.getFloat("Distance");
    this.Xg = row.getFloat("Xg");
    this.Yg = row.getFloat("Yg");
    this.Zg = row.getFloat("Zg");
    this.AbsMag = row.getFloat("AbsMag");
  }
  
  //This function converts an object to a string
  String obToString()
  {
    return Hab + "\t" + DisplayName + "\t" + Distance + "\t" + Xg + "\t" + Yg + "\t" + Zg + "\t" + AbsMag;
  }//end obToString
}