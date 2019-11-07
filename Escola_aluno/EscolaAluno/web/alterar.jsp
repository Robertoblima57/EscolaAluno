<%-- 
    Document   : alterar
    Created on : 13/09/2019, 20:26:12
    Author     : Laboratorio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <<form action ="executar_alterar.jsp" method="post">
            <label>ID_ALUNO</label><br>
            <input type="text" name="ID_ALUNO" value="<%=request.getParameter("ID_ALUNO")%>"/><br>
            <label>NOME</label><br>
            <input type="text" name="NOME" value="<%=request.getParameter("NOME")%>"/><br><br>
            
            <select NAME="GENERO">
                <option>SELECIONE UM GENERO..</option>
                <option value="MASCULINO">MASCULINO</option>
                <option value="FEMININO">FEMININO</option>
            </select><br><br>
            
            <label>IDADE</label><br>
            <input type="text" name="IDADE" value="<%=request.getParameter("IDADE")%>"/><br>

            
            
            <label>EMAIL</label><br>
            <input type="text" name="EMAIL" value="<%=request.getParameter("EMAIL")%>"/><br>
            <label>CURSO</label><br>
            <input type="text" name="CURSO" value="<%=request.getParameter("CURSO")%>"/><br>
            <button type="submit">ATUALIZAR</button>
        </form>
    </body>
</html>
