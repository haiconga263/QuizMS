/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MS.Helper;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author hieptran
 */
public class DataProvider {
    private Statement statement = null;
    private Connection connection = null;
    private ResultSet result = null;
    private final String DatabaseName = "/Users/hieptran/Desktop/abc.db";
    
    public Connection getConnection() throws Exception{
        try{
            Class.forName("org.sqlite.JDBC");
            String url = "jdbc:sqlite:DatabaseName";          
            connection = DriverManager.getConnection(url);
                     
        } catch(SQLException ex){
            throw ex;
        }
        return connection;
    }
	
    public Statement getStatement() throws Exception{
        try{
                if (statement == null ? true : statement.isClosed()){
                        statement = getConnection().createStatement();
                }
        } catch(SQLException ex){
                throw ex;
        }
        return statement;
    }
	
    public ResultSet executeQuery(String sql) throws Exception{
        try{
            result = getStatement().executeQuery(sql);
        } catch(Exception ex){
            throw ex;
        }
        return result;
    }

    public int executeUpdate(String sql) throws Exception{
        int res = Integer.MIN_VALUE;

        try{
            res = getStatement().executeUpdate(sql);
        } catch(Exception ex){
            throw ex;
        } finally{
            close();
        }

        return res;
    }

    public void close() throws Exception{
        try{
            if (result != null && !result.isClosed()){
                    result.close();
                    result = null;
            }
            if (statement != null && !statement.isClosed()){
                    statement.close();
                    statement = null;
            }
            if (connection != null && !connection.isClosed()){
                    connection.close();
                    connection = null;
            }
        } catch(SQLException ex){
            throw ex;
        }
    }
}
