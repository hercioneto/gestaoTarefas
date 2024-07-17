<%-- 
    Document   : gestaoTarefas
    Created on : 12 de jul. de 2024, 16:23:05
    Author     : Aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Gestão de Tarefas 1.0</title>
</head>
<body>
    <h1>Cadastro de Tarefas</h1>

    <form action="processaTarefa.jsp" method="post">
        <label for="tarefa">Tarefa:</label>
        <input type="text" id="tarefa" name="tarefa" required><br><br>
        
        <label for="data">Data:</label>
        <input type="date" id="data" name="data" required><br><br>
        
        <label for="prioridade">Prioridade:</label>
        <select id="prioridade" name="prioridade">
            <option>Normal</option>
            <option>Importante</option>
            <option>Urgente</option>
        </select><br><br>
        
        <label for="prazo">Prazo:</label>
        <input type="number" id="prazo" name="prazo" min="1" max="30" required> dias<br><br>
        
        <label for="status">Status:</label>
        <select id="status" name="status">
            <option>Agendada</option>
            <option>Andamento</option>
            <option>Concluída</option>
        </select><br><br>
        
        <input type="submit" value="Enviar">
    </form>
</body>
</html>
