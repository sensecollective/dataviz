Table table;
Table newTable;

void setup() {

  table = loadTable("IACD_Cleaned_v4.csv", "header");

  newTable = new Table();

  newTable.addColumn("source");
  newTable.addColumn("target");
  newTable.addColumn("factor");

  println(table.getRowCount() + " total rows in table"); 

  for (TableRow row : table.rows ()) {
    TableRow newRow = newTable.addRow();

    String name = row.getString("artist");
    String target1 = row.getString("target1");
    String factor1 = row.getString("factor1");
    
    println(row.getString("artist"));
    
    newRow.setString("source", name);
    newRow.setString("target", target1);
    newRow.setString("factor", factor1);
  }

  for (TableRow row : table.rows ()) {
    TableRow newRow = newTable.addRow();

    String name = row.getString("artist");
    String target2 = row.getString("target2");
    String factor2 = row.getString("factor2");

    newRow.setString("source", name);
    newRow.setString("target", target2);
    newRow.setString("factor", factor2);
  }

  for (TableRow row : table.rows ()) {
    TableRow newRow = newTable.addRow();
    String name = row.getString("artist");
    String target3 = row.getString("target3");
    String factor3 = row.getString("factor3");

    newRow.setString("source", name);
    newRow.setString("target", target3);
    newRow.setString("factor", factor3);
  }

  for (TableRow row : table.rows ()) {
    TableRow newRow = newTable.addRow();
    String name = row.getString("artist");
    String target4 = row.getString("target4");
    String factor4 = row.getString("factor4");

    newRow.setString("source", name);
    newRow.setString("target", target4);
    newRow.setString("factor", factor4);
  }

  for (TableRow row : table.rows ()) {
    TableRow newRow = newTable.addRow();
    String name = row.getString("artist");
    String target5 = row.getString("target5");
    String factor5 = row.getString("factor5");

    newRow.setString("source", name);
    newRow.setString("target", target5);
    newRow.setString("factor", factor5);
  }

  saveTable(newTable, "data/new.csv");

  println("Done!");
}

