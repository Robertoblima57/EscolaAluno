//classe de regras do banco de dados
package DAO;
import MODEL.ALUNO;
import java.sql.Connection;
import java.sql.PreparedStatement;
//aula II
import java.util.ArrayList;
import java.sql.ResultSet;
import java.sql.Statement;


public class ALUNODAO {
    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<ALUNO> lista = new ArrayList<>();
    
    
    public ALUNODAO(){
        conn = new CONEXAO().getCONEXAO();
    }
    
    //metodo de inserir dados
    public void inserir(ALUNO ALUNO){
        String sql = "INSERT INTO escola_alunos(NOME_ALUNO,GENERO_ALUNO,IDADE_ALUNO,EMAIL_ALUNO,CURSO_ALUNO) VALUES(?,?,?,?,?)";
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, ALUNO.getNOME_ALUNO());
            stmt.setString(2, ALUNO.getGENERO_ALUNO());
            stmt.setInt(3, ALUNO.getIDADE_ALUNO());
            stmt.setString(4, ALUNO.getEMAIL_ALUNO());
            stmt.setString(5, ALUNO.getCURSO_ALUNO());
            stmt.execute();
            stmt.close();
            
        }catch(Exception erro){
            throw new RuntimeException("erro 2:" +erro);
        }
    }
    
    //metodos de pesquisa pesquisa tudo
    public ArrayList<ALUNO> ListarTodos(){
        String sql = "SELECT * FROM escola_alunos";
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while(rs.next()){
                ALUNO ALUNO = new ALUNO();
                ALUNO.setID_ALUNO(rs.getInt("ID_ALUNO"));
                ALUNO.setNOME_ALUNO(rs.getString("NOME_ALUNO"));
                ALUNO.setGENERO_ALUNO(rs.getString("GENERO_ALUNO"));
                ALUNO.setIDADE_ALUNO(rs.getInt("IDADE_ALUNO"));
                ALUNO.setEMAIL_ALUNO(rs.getString("EMAIL_ALUNO"));
                ALUNO.setCURSO_ALUNO(rs.getString("CURSO_ALUNO"));
                lista.add(ALUNO);
            }
        }catch(Exception erro){
            throw new RuntimeException("erro 4:"+erro);
         }
        return lista;
    }
    //metodos de pesquisa pesquisar todos por nome
    public ArrayList<ALUNO> ListarTodosNome(String valor){
        String sql = "SELECT * FROM escola_alunos WHERE NOME_ALUNO like'%"+valor+"%'";
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while(rs.next()){
                ALUNO ALUNO = new ALUNO();
                ALUNO.setID_ALUNO(rs.getInt("ID_ALUNO"));
                ALUNO.setNOME_ALUNO(rs.getString("NOME_ALUNO"));
                ALUNO.setGENERO_ALUNO(rs.getString("GENERO_ALUNO"));
                ALUNO.setIDADE_ALUNO(rs.getInt("IDADE_ALUNO"));
                ALUNO.setEMAIL_ALUNO(rs.getString("EMAIL_ALUNO"));
                ALUNO.setCURSO_ALUNO(rs.getString("CURSO_ALUNO"));
                lista.add(ALUNO);
            }
        }catch(Exception erro){
            throw new RuntimeException("erro 5:"+erro);
         }
        return lista;
    }
    
    // metodo de atualização
    public void atualizar(ALUNO ALUNO){
        String sql = "UPDATE escola_alunos SET NOME_ALUNO = ?,"+
                "GENERO_ALUNO = ?, IDADE_ALUNO = ?, "+
                "EMAIL_ALUNO = ?, CURSO_ALUNO = ? WHERE ID_ALUNO = ? ";
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, ALUNO.getNOME_ALUNO());
            stmt.setString(2, ALUNO.getGENERO_ALUNO());
            stmt.setInt(3, ALUNO.getIDADE_ALUNO());
            stmt.setString(4, ALUNO.getEMAIL_ALUNO());
            stmt.setString(5, ALUNO.getCURSO_ALUNO());
            stmt.setInt(6, ALUNO.getID_ALUNO());
            stmt.execute();
            stmt.close();
        }catch(Exception erro){
            throw new RuntimeException("erro 7:"+erro);
        }
    }
    // metodo para excluir
    public void excluir(int valor){
        String sql = "DELETE FROM escola_alunos WHERE ID_ALUNO = "+valor;
        try{
            st = conn.createStatement();
            st.execute(sql);
            st.close();
        }catch(Exception erro){
            throw new RuntimeException("erro 8 ",erro);
        }
        
    }
    
}
