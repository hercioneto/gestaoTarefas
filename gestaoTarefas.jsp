<%-- 
    Document   : processaTarefa
    Created on : 12 de jul. de 2024, 16:30:00
    Author     : Aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <h1>Dados da Tarefa Cadastrada</h1>

   
    <% 
        
        // Verifica se o vetor de tarefas já existe na sessão
        String[][] tarefas = (String[][]) session.getAttribute("tarefas");
        if (tarefas == null) {
            
            tarefas = new String[20][5]; // Inicializa o vetor com capacidade para 20 tarefas
            session.setAttribute("tarefas", tarefas); // cria uma sessão com o array
        }
            
    %>
    
    <table border="1">
        <tr>
            <th>Tarefa</th>
            <th>Data</th>
            <th>Prioridade</th>
            <th>Prazo (dias)</th>
            <th>Status</th>
            <th>Editar</th>
            <th>Excluir</th>
            <th>Concluir</th>
        </tr>
        <% 
        int indice = 0;
        
        for (String[] tarefa : tarefas) { %>
        <tr>
            <% if (tarefa[0] != null) { %>
            <td><%= tarefa[0] %></td>
                <td><%= tarefa[1] %></td>
                <td><%= tarefa[2] %></td>
                <td><%= tarefa[3] %></td>
                <td><%= tarefa[4] %></td>
                <td><a href="editarTarefa.jsp?indice=<%= indice %>">Editar</a></td>
                <td><a href="processaExcluirTarefa.jsp?indice=<%= indice %>">Excluir</a></td>
                <td><a href="processaMarcarConcluida.jsp?indice=<%= indice %>">Marcar como Concluída</a></td>


            <% } %>
        </tr>
        <% indice++; } %>
    </table>
    
    <br>
    <a href="inserirTarefa.jsp">Inserir nova tarefa</a>
</body>
</html>
