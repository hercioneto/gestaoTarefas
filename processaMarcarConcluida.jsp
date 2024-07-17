<%-- 
    Document   : processaMarcarConcluida
    Created on : 12 de jul. de 2024, 18:00:00
    Author     : Aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Marcar Tarefa como Concluída</title>
</head>
<body>
    <h1>Tarefa Concluída</h1>

    <% 
        int indice = Integer.parseInt(request.getParameter("indice"));
        String[][] tarefas = (String[][]) session.getAttribute("tarefas");
        
        if (tarefas != null && indice >= 0 && indice < tarefas.length) {
            // Altera o status da tarefa para "Concluída"
            tarefas[indice][4] = "Concluída";
            session.setAttribute("tarefas", tarefas);
    %>
    
    <p>A tarefa foi marcada como concluída com sucesso!</p>
    
    <% } else { %>
    <p>Ocorreu um erro ao tentar marcar a tarefa como concluída.</p>
    <% } %>
    
    <br>
    <a href="gestaoTarefas.jsp">Voltar à Gestão de Tarefas</a>
</body>
</html>
