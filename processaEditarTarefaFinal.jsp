<%-- 
    Document   : processaEditarTarefaFinal
    Created on : 12 de jul. de 2024, 17:40:00
    Author     : Aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*, java.util.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <h1>Alterações Salvas</h1>

    <% 
        int indice = Integer.parseInt(request.getParameter("indice"));
        String[][] tarefas = (String[][]) session.getAttribute("tarefas");
        
        if (tarefas != null && indice >= 0 && indice < tarefas.length) {
            // Atualiza os dados da tarefa editada
            tarefas[indice][0] = request.getParameter("tarefa");
            tarefas[indice][1] = request.getParameter("data");
            tarefas[indice][2] = request.getParameter("prioridade");
            tarefas[indice][3] = request.getParameter("prazo");
            tarefas[indice][4] = request.getParameter("status");
            session.setAttribute("tarefas", tarefas);
    %>
    
    <p>As alterações foram salvas com sucesso!</p>
    
    <% } else { %>
    <p>Ocorreu um erro ao tentar salvar as alterações.</p>
    <% } %>
    
    <br>
    <a href="gestaoTarefas.jsp">Voltar à Gestão de Tarefas</a>
</body>
</html>

