Feature Auto-avalia��o do aluno.
		As a Aluno da turma.
		I want to me auto-avaliar, colocando o conceito que penso merecer, para cada meta so that eu possa ver o contraste entre o meu julgamento e o do professor, e me reavaliar, para poder tomar decis�es para o meu futuro na disciplina.

	Scenario preenchimento bem sucedido da auto-avalia��o (GUI)
		Given Estou na p�gina de "Auto-avalia��o"
		When eu preencho os conceitos na coluna de "Auto-avalia��o" e confirmo
		Then posso ver uma mensagem de confirma��o de preenchimento bem sucedido

	Scenario preenchimento bem sucedido da auto-avalia��o (Controlador)
		Given Estou na p�gina de "Auto-avalia��o"
		When O sistema recebe os conceitos preenchidos pelo usu�rio na coluna de "Auto-avalia��o"
		Then O sistema armazena no seu banco de dados e atualiza a tabela daquele determinado aluno.

	Scenario preenchimento mal sucedido da auto-avalia��o (GUI)
		Given Estou na p�gina de "Auto-avalia��o"
		When Preencho todos, menos um, conceitos na coluna de "Auto-avalia��o" e confirmo
		Then Uma mensagem de erro com "Voc� n�o preenchou todos os campos da Auto-avalia��o" aparece.

	Scenario preenchimento mal sucedido da auto-avalia��o (Controlador)
		Given Estou na p�gina de "Auto-avalia��o"
		When O sistema recebe os conceitos preenchidos na coluna de "Auto-avalia��o", e nota que faltou um.
		Then O sistema n�o armazena conceito algum.

	Scenario N�o houve nenhuma discrep�ncia.
		Given Todos os alunos submeteram todas as auto-avalia��es e n�o houve nenhuma discrep�ncia.
		When Eu requisito visualiza��o da tabela de notas
		Then Eu vejo a tabela, com todos os dados preenchidos e calculados.

	Scenario Houve discrep�ncia em 1 dos 3 alunos.
		Given Todos os alunos submeteram todas as auto-avalia��es,e um deles obteve alta discrep�ncia.		
		When Eu requisito visualiza��o da tabela de notas.
		Then Eu vejo a tabela, com todos os dados preenchidos e calculados, e um sinal chamando minha aten��o � porcentagem de discrep�ncia do aluno em quest�o.