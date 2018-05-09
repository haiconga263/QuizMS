/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MS.DataAccess;

/**
 *
 * @author hieptd
 */
public class Account {
    private int id, type;
    private String username, pass;
    
    public Account(int id, String username, String pass, int type){
        this.id = id;
        this.username = username;
        this.pass = pass;
        this.type = type;
    }
    public int getID(){
        return this.id;
    }
    public void setID(int id){
        this.id = id;
    }
    public String getUserName(){
        return this.username;
    }
    public void setUserName(String username){
        this.username = username;
    }
    public String getPass(){
        return this.pass;
    }
    public void setPass(String pass){
        this.pass = pass;
    }
    public int setType(){
        return this.type;
    }
    public void getType(){
        this.type = type;
    }
}
