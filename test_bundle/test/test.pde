Table table;

void setup() {
  
  table = loadTable("IACD_Cleaned_v3.csv", "header");

  println(table.getRowCount() + " total rows in table"); 

  for (TableRow row : table.rows()) {
    
    String name = row.getString("name");
    String related1 = row.getString("related1");
    String factor1 = row.getString("factor1");
    
    println(name + " "  +related1 + " "+factor1);
  }
  
}
