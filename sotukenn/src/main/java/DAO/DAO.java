package DAO;

import java.sql.Connection;

import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DAO {
    static DataSource ds;

    public Connection getConnection() throws Exception {
        if (ds == null) {
            InitialContext ic = new InitialContext();
            // context.xml の name と同じにする
            ds = (DataSource) ic.lookup("java:/comp/env/jdbc/neondb");
        }
        return ds.getConnection();
    }
}