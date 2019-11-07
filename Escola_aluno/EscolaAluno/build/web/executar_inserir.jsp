<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.ALUNO"%>
<%@page import="DAO.ALUNODAO"%>
<%
try{
    ALUNO ALU = new ALUNO();
    ALUNODAO CLD = new ALUNODAO();
    String NOME_ALUNO = request.getParameter("NOME");
    String GENERO_ALUNO = request.getParameter("GENERO");
    int IDADE_ALUNO = Integer.parseInt(request.getParameter("IDADE"));
    String EMAIL_ALUNO = request.getParameter("EMAIL");
    String CURSO_ALUNO = request.getParameter("CURSO");
    if (NOME_ALUNO.equals("") || EMAIL_ALUNO.equals("")|| CURSO_ALUNO.equals("")){
        out.print("<script>alert('Campos obrigatorios!');</script>");
        response.sendRedirect("inserir.jsp");
    }else{
        ALU.setNOME_ALUNO(NOME_ALUNO);
        ALU.setGENERO_ALUNO(GENERO_ALUNO);
        ALU.setIDADE_ALUNO(IDADE_ALUNO);
        ALU.setEMAIL_ALUNO(EMAIL_ALUNO);
        ALU.setCURSO_ALUNO(CURSO_ALUNO);
        CLD.inserir(ALU);
        out.print("<script>alert('cadastro realizado com sucesso!');</script>");
        out.print("<script>window.location.href='index.jsp';</script>");
    }
}catch(Exception erro){
    throw new RuntimeException("erro 3:"+erro);
}
    
%>