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