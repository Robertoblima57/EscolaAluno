<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <<form action ="executar_excluir.jsp" method="post">
            <label>ID_ALUNO</label><br>
            <input type="text" name="ID_ALUNO" value="<%=request.getParameter("ID_ALUNO")%>"/><br>
            <label>NOME</label><br>
            <input type="text" name="NOME" value="<%=request.getParameter("NOME")%>"/><br>
            <button type="submit">EXCLUIR</button>
        </form>
    </body>
</html>
