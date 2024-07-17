<%-- 
    Document   : processaEditarTarefa
    Created on : 12 de jul. de 2024, 17:30:00
    Author     : Aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Editar Tarefa</title>
</head>
<body>
    <h1>Editar Tarefa</h1>

    <% 
        int indice = Integer.parseInt(request.getParameter("indice"));
        String[][] tarefas = (String[][]) session.getAttribute("tarefas");
        
        if (tarefas != null && indice >= 0 && indice < tarefas.length) {
            // Recupera os dados da tarefa a ser editada
            String tarefa = tarefas[indice][0];
            String data = tarefas[indice][1];
            String prioridade = tarefas[indice][2];
            String prazo = tarefas[indice][3];
            String status = tarefas[indice][4];
    %>
    
    <form action="processaEditarTarefaFinal.jsp" method="post">
        <input type="hidden" name="indice" value="<% out.print(indice); %>">
        
        <label for="tarefa">Tarefa:</label>
        <input type="text" id="tarefa" name="tarefa" value="<% out.print(tarefa); %>" required><br><br>
        
        <label for="data">Data:</label>
        <input type="date" id="data" name="data" value="<% out.print(data); %>" required><br><br>
        
        <label for="prioridade">Prioridade:</label>
        <select id="prioridade" name="prioridade">
            <option <% if (prioridade.equals("Normal")) { out.print("selected"); } %>>Normal</option>
            <option <% if (prioridade.equals("Importante")) { out.print("selected"); } %>>Importante</option>
            <option <% if (prioridade.equals("Urgente")) { out.print("selected"); } %>>Urgente</option>
        </select><br><br>
        
        <label for="prazo">Prazo:</label>
        <input type="number" id="prazo" name="prazo" value="<% out.print(prazo); %>" min="1" max="30" required> dias<br><br>
        
        <label for="status">Status:</label>
        <select id="status" name="status">
            <option <% if (status.equals("Agendada")) { out.print("selected"); }  %>>Agendada</option>
            <option <% if ( status.equals("Andamento")) { out.print("selected"); } %>>Andamento</option>
            <option <% if (status.equals("Concluída")) { out.print("selected"); } %>>Concluída</option>
        </select><br><br>
        
        <input type="submit" value="Salvar Alterações">
    </form>
    
    <% } else { %>
    <p>Tarefa não encontrada ou índice inválido.</p>
    <% } %>
    
    <br>
    <a href="gestaoTarefas.jsp">Voltar à Gestão de Tarefas</a>
</body>
</html>
