<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.ALUNODAO"%>
<%@page import="MODEL.ALUNO"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AULA BETINHO</title>
    </head>
    <body>
        <form action="index.jsp" method="post">
            
            <label>NOME</label><br>
            <input type="text" name="nome"/><br><br>
            <button type="submit">PESQUISAR</button><br><br>
        </form>
        <%
            String NOME_ALUNO = request.getParameter("nome");
            try{
                out.print("<table border='1'>");
                out.print("<tr>");
                out.print("<th>código</th>");
                out.print("<th>nome</th>");
                out.print("<th>genero</th>");
                out.print("<th>idade</th>");
                out.print("<th>email</th>");
                out.print("<th>curso</th>");
                out.print("<th>editar</th>");
                out.print("<th>excluir</th>");
                out.print("</tr>");
                
                ALUNODAO ALU = new ALUNODAO();
                if(NOME_ALUNO == "" || NOME_ALUNO == null){
                    ArrayList<ALUNO> lista = ALU.ListarTodos();
                    for(int i = 0;i < lista.size();i++){
                        out.print("<tr>");
                        out.print("<td>"+lista.get(i).getID_ALUNO()+"</td>");
                        out.print("<td>"+lista.get(i).getNOME_ALUNO()+"</td>");
                        out.print("<td>"+lista.get(i).getGENERO_ALUNO()+"</td>");
                        out.print("<td>"+lista.get(i).getIDADE_ALUNO()+"</td>");
                        out.print("<td>"+lista.get(i).getEMAIL_ALUNO()+"</td>");
                        out.print("<td>"+lista.get(i).getCURSO_ALUNO()+"</td>");
                        out.print("<td><a href='alterar.jsp?ID_ALUNO="+lista.get(i).getID_ALUNO()+
                                "&NOME="+lista.get(i).getNOME_ALUNO()+
                                "&GENERO="+lista.get(i).getGENERO_ALUNO()+
                                "&IDADE="+lista.get(i).getIDADE_ALUNO()+
                                "&EMAIL="+lista.get(i).getEMAIL_ALUNO()+
                                "&CURSO="+lista.get(i).getCURSO_ALUNO()+"'>CLIQUE</a></td>");
                        out.print("<td><a href='excluir.jsp?ID_ALUNO="+lista.get(i).getID_ALUNO()+
                                "&NOME="+lista.get(i).getNOME_ALUNO()+"'>CLIQUE</a></td>");
                        out.print("</tr>");
                    }
                }else{
                    ArrayList<ALUNO> lista = ALU.ListarTodosNome(NOME_ALUNO);
                    for(int i = 0; i < lista.size();i++){
                        out.print("<tr>");
                        out.print("<td>"+lista.get(i).getID_ALUNO()+"</td>");
                        out.print("<td>"+lista.get(i).getNOME_ALUNO()+"</td>");
                        out.print("<td>"+lista.get(i).getGENERO_ALUNO()+"</td>");
                        out.print("<td>"+lista.get(i).getIDADE_ALUNO()+"</td>");
                        out.print("<td>"+lista.get(i).getEMAIL_ALUNO()+"</td>");
                        out.print("<td>"+lista.get(i).getCURSO_ALUNO()+"</td>");
                        out.print("<td><a href='alterar.jsp?codigo="+lista.get(i).getID_ALUNO()+
                                "&NOME="+lista.get(i).getNOME_ALUNO()+
                                "&GENERO="+lista.get(i).getGENERO_ALUNO()+
                                "&IDADE="+lista.get(i).getIDADE_ALUNO()+
                                "&EMAIL="+lista.get(i).getEMAIL_ALUNO()+
                                "&CURSO="+lista.get(i).getCURSO_ALUNO()+"'>CLIQUE</a></td>");
                        out.print("<td><a href='excluir.jsp?codigo="+lista.get(i).getID_ALUNO()+
                                "&NOME="+lista.get(i).getNOME_ALUNO()+"'>CLIQUE</a></td>");
                        out.print("</tr>");
                    }
                }
            }catch(Exception erro){
                throw new RuntimeException("erro 6 "+ erro);
            }
            out.print("</table>");
        %>
        <br>
        <a href="inserir.jsp">NOVO CADASTRO</a>
    </body>
</html>
