/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MS.Helper;

/**
 *
 * @author hieptd
 */

import java.sql.ResultSet;

public class ExecuteQuery {
    DataProvider connect = new DataProvider();
	
    public ResultSet selectTable(String tableName) throws Exception{
        String sql = "SELECT * FROM  " + tableName;
        return connect.executeQuery(sql);
    }
    public boolean update(String sql) throws Exception{
        int result = connect.executeUpdate(sql);
        if(result != 0)
            return true;
        else
            return false;
    }
    public ResultSet executeQuery(String sql) throws Exception{
        return connect.executeQuery(sql);
    }
    public ResultSet selectTableWithCondition(String tableName, String condition) throws Exception{
        String sql = "Select * From " + tableName + " Where " + condition;
        return connect.executeQuery(sql);
    }

    public void insertValues(String tableName, String values) throws Exception{
        String sql = "Insert " + tableName + " Values (" + values + ")";
        connect.executeUpdate(sql);
    }

    public void deleteValues(String tableName, String condition) throws Exception{
        String sql = "Delete " + tableName + " Where (" + condition + ")";
        connect.executeUpdate(sql);
    }

    public void close() throws Exception{
        connect.close();
    }
}