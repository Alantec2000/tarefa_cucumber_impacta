#language: pt
  Funcionalidade: CRUD de Processos
    Contexto:
      Dado que o usuário deseja salvar um processo
      E informe "vara" com o valor "Osasco"
      E informe "numero_processo" com o valor "12345"
      E informe "natureza" com o valor "Civil"
      E informe "partes" com o valor "Teste Alan"
      E informe "urgente" com o valor "S"
      E informe "arbitramento" com o valor "S"
      E informe "assistente_social" com o valor "João"
      E informe "data_entrada" com o valor "2020-12-10"
      E informe "data_saida" com o valor "2020-12-20"
      E informe "data_agendamento" com o valor "2020-02-20"
      E informe "status" com o valor "Em andamento"
      E informe "observacao" com o valor ""

    Cenario: Criando novo processo - POST
      Quando O usuário clicar no botão salvar
      Entao O sistema deve apresentar a mensagem: "salvo com sucesso"

    @ignoreThisOnePLZ
    Cenario: Criando novo processo - POST alternativo
      Dado que o usuário deseja salvar um processo
      E informa os campos do formulário de inserção
      Quando O usuário clicar no botão salvar
      Entao O sistema deve apresentar a mensagem: "salvo com sucesso"

    Cenario: Visualizando os dados de um processo - GET
      Dado O usuário clicar no botão salvar
      Quando O usuário clicar no botão mostrar
      Entao O sistema deve apresentar a mensagem: "sucesso"
      E o usuário irá visualizar o campo "vara" com o valor "Osasco"
      E o usuário irá visualizar o campo "numero_processo" com o valor "12345"
      E o usuário irá visualizar o campo "natureza" com o valor "Civil"
      E o usuário irá visualizar o campo "partes" com o valor "Teste Alan"
      E o usuário irá visualizar o campo "urgente" com o valor "S"
      E o usuário irá visualizar o campo "arbitramento" com o valor "S"
      E o usuário irá visualizar o campo "assistente_social" com o valor "João"
      E o usuário irá visualizar o campo "data_entrada" com o valor "2020-12-10"
      E o usuário irá visualizar o campo "data_saida" com o valor "2020-12-20"
      E o usuário irá visualizar o campo "data_agendamento" com o valor "2020-02-20"
      E o usuário irá visualizar o campo "status" com o valor "Em andamento"
      E o usuário irá visualizar o campo "observacao" com o valor ""

    Cenario: Alterando os dados de um processo - PUT
      Dado O usuário clicar no botão salvar
      Quando O usuário alterar o campo "partes" para o valor "Ronaldo"
      E o usuário clicar no botão editar
      Entao O sistema deve apresentar a mensagem: "sucesso"
      E o usuário irá visualizar o campo "vara" com o valor "Osasco"
      E o usuário irá visualizar o campo "numero_processo" com o valor "12345"
      E o usuário irá visualizar o campo "natureza" com o valor "Civil"
      E o usuário irá visualizar o campo "partes" com o valor "Ronaldo"
      E o usuário irá visualizar o campo "urgente" com o valor "S"
      E o usuário irá visualizar o campo "arbitramento" com o valor "S"
      E o usuário irá visualizar o campo "assistente_social" com o valor "João"
      E o usuário irá visualizar o campo "data_entrada" com o valor "2020-12-10"
      E o usuário irá visualizar o campo "data_saida" com o valor "2020-12-20"
      E o usuário irá visualizar o campo "data_agendamento" com o valor "2020-02-20"
      E o usuário irá visualizar o campo "status" com o valor "Em andamento"
      E o usuário irá visualizar o campo "observacao" com o valor ""

    Cenario: Removendo um processo - DELETE
      Dado O usuário clicar no botão salvar
      Quando O usuário clicar no botão apagar
      Entao O sistema deve apresentar a mensagem: "sem conteúdo"

      Quando O usuário clicar no botão mostrar
      Entao O sistema deve apresentar a mensagem: "não encontrado"

    Esquema do Cenario:
      Dado que o usuário deseja salvar um processo
      E informe "vara" com o valor "<vara>"
      E informe "numero_processo" com o valor "12345"
      E informe "natureza" com o valor "Civil"
      E informe "partes" com o valor "Teste Alan"
      E informe "urgente" com o valor "S"
      E informe "arbitramento" com o valor "S"
      E informe "assistente_social" com o valor "João"
      E informe "data_entrada" com o valor "2020-12-10"
      E informe "data_saida" com o valor "2020-12-20"
      E informe "data_agendamento" com o valor "2020-02-20"
      E informe "status" com o valor "Em andamento"
      E informe "observacao" com o valor ""
      Quando O usuário clicar no botão salvar alternativo
      Entao O sistema deve apresentar a mensagem: "<mensagem>"

      Exemplos:
      | vara | mensagem |
      | Osasco | salvo com sucesso |
      |        | entidade não processada |
      |   OZ   | salvo com sucesso |