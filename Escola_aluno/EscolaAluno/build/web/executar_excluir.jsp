<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.ALUNODAO"%>

<%
    try{
        ALUNODAO CLD = new ALUNODAO();
        int ID_ALUNO = Integer.parseInt(request.getParameter("ID_ALUNO"));
        CLD.excluir(ID_ALUNO);
        out.print("<script>alert('Registro excluido')</script>");
        out.print("<script>window.location.href='index.jsp';</script>");
    }catch(Exception erro){
        throw new RuntimeException("erro10"+ erro);
        
    }
%>