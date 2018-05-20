/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MS.Business;

import MS.DataAccess.Student;
import MS.Helper.ExecuteQuery;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author hieptd
 */
public class StudentBUS {

    private final ExecuteQuery ex = new ExecuteQuery();

    public List<Student> GetStudent() throws SQLException, Exception {
        List<Student> lst = new ArrayList<>();
        Student student;
        String sql = "SELECT st.* \n"
                + "FROM Student st , answer ans \n"
                + "WHERE st.id = ans.id_question";
        ResultSet rs = ex.executeQuery(sql);
        while (rs.next()) {
            student = new Student(rs.getInt("id"), rs.getInt("id_exam"), rs.getInt("point"), rs.getString("name"));
            lst.add(student);
        }
        return lst;
    }
    
}
