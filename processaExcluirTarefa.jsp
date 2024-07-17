<%-- 
    Document   : processaExcluirTarefa
    Created on : 12 de jul. de 2024, 17:50:00
    Author     : Aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Excluir Tarefa</title>
</head>
<body>
    <h1>Tarefa Excluída</h1>

    <% 
        int indice = Integer.parseInt(request.getParameter("indice"));
        String[][] tarefas = (String[][]) session.getAttribute("tarefas");
        
        if (tarefas != null && indice >= 0 && indice < tarefas.length) {
            // Remove a tarefa do vetor
            tarefas[indice] = new String[5]; // Cria um novo array vazio para remover os dados
            session.setAttribute("tarefas", tarefas);
    %>
    
    <p>A tarefa foi excluída com sucesso!</p>
    
    <% } else { %>
    <p>Ocorreu um erro ao tentar excluir a tarefa.</p>
    <% } %>
    
    <br>
    <a href="gestaoTarefas.jsp">Voltar à Gestão de Tarefas</a>
</body>
</html>
