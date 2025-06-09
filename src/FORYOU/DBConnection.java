
package FORYOU;

import javax.swing.JOptionPane;
import java.sql.DriverManager;
import java.sql.Connection;

public class DBConnection {
    public static Connection connect(){
    Connection con=null;
    try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/Car_Rental?sessionVariables=sql_mode='NO_ENGINE_SUBSTITUTION'&jdbcCompliantTruncation=false","root","");
        
    }
    
catch(Exception e){
    System.out.println("The error was: "+ e);  
}
    return con;
        }
}
