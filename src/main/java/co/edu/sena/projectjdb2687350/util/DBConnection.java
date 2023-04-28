package co.edu.sena.projectjdb2687350.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection{

    private final String base = "bancodivisas";

    private final String user = "q4m9s6raz7fhz753ne95";

    private final String password = "pscale_pw_piuvPgtcDsL42eA67fJGi2RNGVScrbcrNfwV9xbKxoY";

    private final String url = "jdbc:mysql://aws.connect.psdb.cloud/bancodivisas?sslMode=VERIFICAR_IDENTIDAD";

    private Connection con = null;

    public Connection getConexion() {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url,user,password);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return con;
    }
    }



