/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MS.Business;

import MS.Helper.ExecuteQuery;
import java.sql.ResultSet;

/**
 *
 * @author hieptd
 */
public class AccountBUS {
    private final ExecuteQuery ex = new ExecuteQuery();
    public ResultSet Login(String username, String pass) throws Exception{
        
        String sql =   "SELECT * FROM Account WHERE username='"
                        + username
                        + "' AND pass='"
                        + pass
                        + "'";
        return ex.executeQuery(sql);     
    } 
}
