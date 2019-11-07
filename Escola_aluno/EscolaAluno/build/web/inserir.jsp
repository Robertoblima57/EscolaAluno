<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PÁGINA CADASTRO ALUNO</title>
    </head>
    <body>
        <form action="executar_inserir.jsp" method="post">
            <label>NOME</label><br>
            <input type="text" name="NOME"/><br><br>
                        
            <select NAME="GENERO">
                <option>SELECIONE UM GENERO..</option>
                <option value="MASCULINO">MASCULINO</option>
                <option value="FEMININO">FEMININO</option>
            </select><br><br>
           <%--  
            <label>GENERO</label><br>
            <input type="text" name="GENERO"/><br>
           --%> 
            
            <label>IDADE</label><br>
            <input type="text" name="IDADE"/><br>
            
            <label>EMAIL</label><br>
            <input type="text" name="EMAIL"/><br>
            <label>CURSO</label><br>
            <input type="text" name="CURSO"/><br><br>
            <button type="submit">CADASTRAR</button>
        </form>
    </body>
</html>

