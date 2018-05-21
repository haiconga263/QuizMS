/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MS.Business;
import MS.DataAccess.Answer;
import MS.Helper.DataProvider;
import MS.Helper.ExecuteQuery;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/**
 *
 * @author hieptd
 */
public class AnswerBUS {

    private final ExecuteQuery ex = new ExecuteQuery();
    private final DataProvider da = new DataProvider();
    
    public void InsertAnswer(Map <Integer, String> map) throws Exception {
        Connection con = da.getConnection();
        con.setAutoCommit(false);
        int rs = -1;
        int res[]; 
        Iterator<Map.Entry<Integer, String>> it = map.entrySet().iterator();
       
        String sql = "update answer \n" 
                        + "set content_ans = ?"
                        + " Where id = ?";
        PreparedStatement stmt = con.prepareStatement(sql);
        while (it.hasNext()) {
            Map.Entry<Integer,String> pairs = (Map.Entry<Integer,String>)it.next();
            stmt.setString(1, pairs.getValue());
            stmt.setInt(2, pairs.getKey());
            stmt.addBatch(); 
            it.remove();
        }    
        res = stmt.executeBatch();
        con.commit();
    }
    public void UpdateAns(Map <Integer, Integer> map) throws Exception {
        Connection con  = da.getConnection();
        con.setAutoCommit(false);
        int rs = -1;
        int res[]; 
        Iterator<Map.Entry<Integer, Integer>> it = map.entrySet().iterator();
       
        String sql = "update  answer \n" 
                        + "set point = ?"
                        + "Where id = ?";
        PreparedStatement stmt = con.prepareStatement(sql);
        while (it.hasNext()) {
            Map.Entry<Integer,Integer> pairs = (Map.Entry<Integer,Integer>)it.next();
            stmt.setInt(1, pairs.getValue());
            stmt.setInt(2, pairs.getKey());
            stmt.addBatch();
            it.remove();
        }    
        res = stmt.executeBatch();
        con.commit();
    }
}
