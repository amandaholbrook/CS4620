// Class to ask user choices
// Amanda Holbrook
// CS 4620

import java.io.*; 
import java.sql.*;

class demo { 

  public static void main (String args []) 
      throws SQLException, IOException { 

    guild g1 = new guild();
    boolean done;
    char ch,ch1;
    byte num = 0;

    try {
      Class.forName ("oracle.jdbc.driver.OracleDriver");
    } catch (ClassNotFoundException e) {
        System.out.println ("Could not load the driver");
        return;
      }
    String user, pass;
    user = readEntry("userid  : ");
    pass = readEntry("password: ");

    // The following line was modified by Prof. Marling to work on prime

    Connection conn = DriverManager.getConnection
       ("jdbc:oracle:thin:@deuce.cs.ohio.edu:1521:class", user, pass);

    done = false;
    do {
      g1.print_menu();
      System.out.print("Type in your option:");
      System.out.flush();
      ch = (char) System.in.read();
      ch1 = (char) System.in.read();
      switch (ch) {
        case '1' : g1.add_member(conn);
                   break;
        case '2' : g1.add_character(conn);
                   break;
        case '3' : g1.add_campaign(conn);
                   break;
        case '4' : g1.add_participant(conn);
                   break;
        case '5' : g1.delete_tuple(conn);
                   break;
        case '6' : g1.update_tuple(conn);
                   break;
        case '7' : g1.display_table(conn);
                   break;
        case '8' : g1.display_living_char(conn);
                   break;
        case '9' : g1.display_curr_cam(conn);
                   break;
        case 'q' : done = true;
                   break;
        default  : System.out.println("Type in option again");
      }
    } while (!done);

    conn.close();
  }

  // --readEntry function -- to read input string
  static String readEntry(String prompt) {
     try {
       StringBuffer buffer = new StringBuffer();
       System.out.print(prompt);
       System.out.flush();
       int c = System.in.read();
       while(c != '\n' && c != -1) {
         buffer.append((char)c);
         c = System.in.read();
       }
       return buffer.toString().trim();
     } catch (IOException e) {
       return "";
       }
   }
}
