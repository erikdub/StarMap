//The class star is created
class Star
{
  //Variables
  int Hab;
  String DisplayName;
  float Distance;
  float Xg;
  float Yg;
  float Zg;
  float AbsMag;
  
  //Function Star for putting rows to variables
  Star(TableRow row)
  {
    this.Hab = row.getInt("Hab?");
    this.DisplayName = row.getString("Display Name");
    this.Distance = row.getFloat("Distance");
    this.Xg = row.getFloat("Xg");
    this.Yg = row.getFloat("Yg");
    this.Zg = row.getFloat("Zg");
    this.AbsMag = row.getFloat("AbsMag"); 
  }//end Star
  
  //toString converts objects to strings
  String toString()
  {
    return Hab + "\t" + DisplayName + "\t" + Distance + "\t" + Xg + "\t" + Yg + "\t" + Zg + "\t" + AbsMag;
  }//end toString
}//end star class