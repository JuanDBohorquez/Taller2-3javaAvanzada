package co.edu.sena.projectjdb2687350.model;

import co.edu.sena.projectjdb2687350.util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Sqlusers extends DBConnection {

    public boolean register(User usr){

        PreparedStatement ps = null;
        Connection con = getConexion();

        String sql = "INSERT INTO users (user_id,user_firstname,user_lastname,user_email,user_password) VALUES(?,?,?,?,?)";

        try {
            ps = con.prepareStatement(sql);
            ps.setInt(1,usr.getUser_id());
            ps.setString(2,usr.getUser_firstname());
            ps.setString(3,usr.getUser_lastname());
            ps.setString(4,usr.getUser_email());
            ps.setString(5,usr.getUser_password());
            ps.execute();
            return true;
        } catch (SQLException e) {
            Logger.getLogger(Sqlusers.class.getName()).log(Level.SEVERE,null, e);
            return false;

        }


    }
}
