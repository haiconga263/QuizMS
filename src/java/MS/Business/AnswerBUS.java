/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MS.Business;
import MS.DataAccess.Answer;
import MS.Helper.ExecuteQuery;
/**
 *
 * @author hieptd
 */
public class AnswerBUS {

    private final ExecuteQuery ex = new ExecuteQuery();

    public boolean SaveAnswer(Answer ans) throws Exception {
        String sql = "INSERT INTO answer( content_ans, id_question, id_student)\n"
                + "Values('" + ans.getAnswer() + "'"
                + ", '" + ans.getId_question() + "'"
                + ", '" + ans.getId_student() +"')";
        return ex.update(sql);
    }
}
