// Class to build/call SQL queries
// Amanda Holbrook
// CS 4620 Final

import java.sql.*; 
import java.io.*; 

class guild { 

  void print_menu() {
    System.out.println("\n      DND GUILD PROGRAM\n");
    System.out.println("(1) Add Member");
    System.out.println("(2) Add Character");
    System.out.println("(3) Add Campagain");
    System.out.println("(4) Add Participant");
    System.out.println("(5) Delete Entry");
    System.out.println("(6) Update Entry");
    System.out.println("(7) Diplay Table");
    System.out.println("(8) Display Living Characters");
    System.out.println("(9) Display Ongoing Campaigns");
    System.out.println("(q) Quit\n");
  }

  void add_member(Connection conn) 
    throws SQLException, IOException {

    String name = readEntry("Member Name: ");
    String yrs = readEntry("Years in Guild: ");
    String align = readEntry("Member Alignment: ");
    String query = "insert into members values (" + "'" + name + "'," + yrs + ",'" + align + "')";

    Statement stmt = conn.createStatement (); 
    try {
      stmt.executeUpdate(query);
    } catch (SQLException e) {
      System.out.println("Member was not added! Failure!");
      return;
    }
    System.out.println("Member was added! Success!");
    stmt.close();
  }

  void add_character(Connection conn) 
        throws SQLException, IOException {

    String name = readEntry("Name: ");
    String status = readEntry("Status: ");
    String align = readEntry("Alignment: ");
    String gender = readEntry("Gender: ");
    String age = readEntry("Age: ");
    String job = readEntry("Job: ");
    String c = readEntry("Class: ");
    String race = readEntry("Race: ");
    String memberName = readEntry("Member Name: ");

    String query = "insert into characters values (" + "'" + name + "','" + status + "'," + "'" + align + "','" + gender + "'," + age + ",'" + job + "','" + c + "','" + race + "','" + memberName + "')";
           
    Statement stmt = conn.createStatement (); 
    try {
      stmt.executeUpdate(query);
    } catch (SQLException e) {
      System.out.println("Character was not added! Failure!");
      return;
    }
    System.out.println("Character was added! Success!");
    stmt.close();
  }

void add_campaign(Connection conn) 
        throws SQLException, IOException {

    String title = readEntry("Title: ");
    String status = readEntry("Status: ");
    String length = readEntry("Length: ");
    String goal = readEntry("Goal: ");
    String settingTime = readEntry("Time: ");
    String settingPlace = readEntry("Place: ");
    String settingMood = readEntry("Mood: ");
    String memberName = readEntry("Member Name: ");

    String query = "insert into campaign values (" + "'" + title + "','" + status + "'," + "'" + length + "','" + goal + "','" + settingTime + "','" + settingPlace + "','" + settingMood + "','" + memberName + "')";
           
    Statement stmt = conn.createStatement (); 
    try {
      stmt.executeUpdate(query);
    } catch (SQLException e) {
      System.out.println("Campaign was not added! Failure!");
      return;
    }
    System.out.println("Campaign was added! Success!");
    stmt.close();
  }

void add_participant(Connection conn) 
  throws SQLException, IOException {

  String campaignTitle = readEntry("Campaign: ");
  String characterName = readEntry("Character: ");
  String query = "insert into participatesin values (" + "'" + campaignTitle + "','" + characterName + "')";

  Statement stmt = conn.createStatement (); 
  try {
    stmt.executeUpdate(query);
  } catch (SQLException e) {
    System.out.println("Member was not added! Failure!");
    return;
  }
  System.out.println("Member was added! Success!");
  stmt.close();
}

  void delete_tuple(Connection conn) 
      throws SQLException, IOException {

    String table = readEntry("Table Name: ");
    String condition = readEntry("Condition Statement: ");
    String query = "delete from " + table + " where " + condition;

    Statement stmt = conn.createStatement (); 
    try {
      stmt.executeUpdate(query);
    } catch (SQLException e) {
      System.out.println("Entry not deleted! Failure!");
      return;
    }
    System.out.println("Entry deleted! Success!");
    stmt.close();
  }

  void update_tuple(Connection conn) 
      throws SQLException, IOException {

    String table = readEntry("Table Name: ");
    String values = readEntry("Values to Change(column = value): ");
    String condition = readEntry("Condition Statement: ");
    String query = "update " + table + " set " + values + " where " + condition;

    Statement stmt = conn.createStatement (); 
    try {
      stmt.executeUpdate(query);
    } catch (SQLException e) {
      System.out.println(e.getMessage());
      System.out.println("Entry not updated! Failure!");
      return;
    }
    System.out.println("Entry updated! Success!");
    stmt.close();
  }

  void display_table(Connection conn) 
      throws SQLException, IOException {

    Statement stmt = null;
    String table = readEntry("Table Name: ");
    String query = "select * from " + table;

    if(table.equals("NULL")){
      System.out.println("");
    }
    else if(table.equals("Members")){ 
    try {
      stmt = conn.createStatement();
      ResultSet rs = stmt.executeQuery(query);
      while (rs.next()){
          String name = rs.getString("MemberName");
          int yrs = rs.getInt("YearsInGuild");
          String align = rs.getString("MemberAlignment");
          System.out.println("\nName: " + name + "\nYears in Guild: " + yrs + "\nAlignment: " + align);
      }

    } catch (SQLException e) {
       System.out.println("Table not found!");
       System.err.println(e.getMessage());
     } finally {
       if (stmt != null) {
         stmt.close();
       }
     }
    }
        else if(table.equals("Characters")){
          try {
            stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()){
          String name = rs.getString("CharacterName");
          String status = rs.getString("Stat");
          String align = rs.getString("CharacterAlign");
          String gender = rs.getString("Gender");
          int age = rs.getInt("Age");
          String job = rs.getString("Job");
          String c = rs.getString("Class");
          String r = rs.getString("Race");
          String own = rs.getString("Own");
          System.out.println("\nName: " + name + "\nStatus: " + status + "\nAlignment: " + align +"\nGender: " + gender + "\nAge: " + age +"\nJob: " + job +"\nClass: " + c +"\nRace: " + r +"\nOwner: " + own);
        }
      } catch (SQLException e) {
        System.out.println("Table not found!");
      } finally {
        if (stmt != null) {
          stmt.close();
        }
      }
     }
        else if(table.equals("Campaign")){
          try {
            stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()){
          String title = rs.getString("Title");
          String status = rs.getString("Stat");
          String l = rs.getString("Lengths");
          String goal = rs.getString("Goal");
          String time = rs.getString("SettingTime");
          String place = rs.getString("SettingPlace");
          String mood = rs.getString("SettingMood");
          String creator = rs.getString("Creator");
          System.out.println("\nTitle: " + title + "\nStatus: " + status + "\nLength: " + l +"\nGoal: " + goal + "\nTime: " + time +"\nPlace: " + place +"\nMood: " + mood + "\nCreator: " + creator);
        }
      } catch (SQLException e) {
        System.out.println("Table not found!");
      } finally {
        if (stmt != null) {
          stmt.close();
        }
      }
     }
        else if (table.equals("ParticipatesIn")){
          try {
            stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()){
          String title = rs.getString("CampaignTitle");
          String name = rs.getString("CharacterName");
          System.out.println("\nCampaign: " + title + "\nCharacter: " + name);
        }
      } catch (SQLException e) {
        System.out.println("Table not found!");
      } finally {
        if (stmt != null) {
          stmt.close();
        }
      }
     }
     else{
       System.out.print("No Such Table.");
     }

  }


  void display_living_char(Connection conn) 
      throws SQLException, IOException {

    Statement stmt = null;
    String query = "select CharacterName, Own from Characters where Stat = 'Alive'";

    try {
      stmt = conn.createStatement (); 
      ResultSet rs = stmt.executeQuery(query);
      while (rs.next()){
        String title = rs.getString("CharacterName");
        String own = rs.getString("Own");
        System.out.println("\nCampaign: " + title + "\nCharacter: " + own);
      }
    } catch (SQLException e) {
      System.out.println("No entries found!");
    } finally {
      if (stmt != null) {
        stmt.close();
      }
    }
  }

  void display_curr_cam(Connection conn) 
      throws SQLException, IOException {

    Statement stmt = null;
    String query = "select Title from Campaign where Stat = 'On-going'";

    
    try {
      stmt = conn.createStatement (); 
      ResultSet rs = stmt.executeQuery(query);
      while (rs.next()){
        String title = rs.getString("Title");
        System.out.println("Title: " + title);
      }
    } catch (SQLException e) {
      System.out.println("No entries found!");
    } finally {
      if (stmt != null) {
        stmt.close();
      }
    }
  }

  //readEntry function -- to read input string
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
