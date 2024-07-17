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
    <h1>Tarefa Cadastrada</h1>

    <% 
        String nomeTarefa = request.getParameter("tarefa"); 
        String data = request.getParameter("data"); 
        String prioridade = request.getParameter("prioridade"); 
        int prazo = Integer.parseInt(request.getParameter("prazo")); 
        String status = request.getParameter("status"); 
    %>
    
    
    <% 
        // Verifica se o vetor de tarefas já existe na sessão
        String[][] tarefas = (String[][]) session.getAttribute("tarefas");
        if (tarefas == null) {
            tarefas = new String[20][5]; // Inicializa o vetor com capacidade para 20 tarefas
            session.setAttribute("tarefas", tarefas); // cria uma sessão com o array
        }
        
        // Encontra a próxima posição disponível no vetor
        int indice = 0;
        while (tarefas[indice][0] != null && indice < tarefas.length) {
            indice++;
        }
        
        // Armazena os dados na próxima posição disponível
        tarefas[indice][0] = nomeTarefa;
        tarefas[indice][1] = data;
        tarefas[indice][2] = prioridade;
        tarefas[indice][3] = String.valueOf(prazo);
        tarefas[indice][4] = status;
    %>
    
    <h3>Tarefa inserida com sucesso</h3>
    <a href="gestaoTarefas.jsp">Ver tarefas</a>
    <br>
    <a href="inserirTarefa.jsp">Voltar ao Formulário</a>
</body>
</html>
