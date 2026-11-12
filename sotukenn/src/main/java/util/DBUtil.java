package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtil {

    public static Connection getConnection() throws Exception {

        // Neonのホスト名・DB名に合わせて書き換えてください（末尾の ?sslmode=require は必須）
        String url = "jdbc:postgresql://ep-royal-block-be05eaj8-pooler.c-9.us-east-2.aws.neon.tech/neondb?sslmode=require";
        String user = "neondb_owner"; // Neonのユーザー名
        String password = "npg_OpM5VYGTfIe4"; // Neonのパスワード

        Class.forName("org.postgresql.Driver");

        return DriverManager.getConnection(url, user, password);
    }
}