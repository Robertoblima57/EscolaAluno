//classe de conexao
package DAO;
//importar duas bibiliotecas
import java.sql.Connection;
import java.sql.DriverManager;

public class CONEXAO {
    // metodo para realizar conexao com o banco
    public Connection getCONEXAO(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost:3307/escola","root","");
        }catch(Exception erro){
            throw new RuntimeException("erro 1:" + erro);
        }
    }
                
}
