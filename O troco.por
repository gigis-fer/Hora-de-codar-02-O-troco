programa
{
	funcao inicio()
	{

  real saldo = 150.67
	cadeia nome_usuario
	inteiro senhaCorreta = 2026
	inteiro senha_digitada, opcao
	logico continuar = verdadeiro

		escreva("Bem-vindo ao Sistema Bancário, qual seu nome: ")
		leia(nome_usuario)
		escreva("Olá, ", nome_usuario, " é um prazer ter você por aqui!\n")

		enquanto (continuar)
		{
			escreva("Escolha uma opção:\n")
			escreva("1. Ver saldo\n")
			escreva("2. Ver extrato\n")
			escreva("3. Fazer saque\n")
			escreva("4. Fazer depósito\n")
			escreva("5. Fazer transferência\n")
			escreva("6. Sair\n")
			leia(opcao)

			escolha (opcao)
			{
				caso 1: 
					escreva("Informe a sua senha: ")
					leia(senha_digitada)
					se (senha_digitada != senhaCorreta) {
						escreva("Senha incorreta!\n\n")} 
            
            
            senao {
						escreva("Seu saldo atual é: R$ ", saldo, "\n")
					}
					pare


				caso 2: 
					escreva("Informe a sua senha: ")
					leia(senha_digitada)
					se (senha_digitada != senhaCorreta) {
						escreva("Senha incorreta!\n\n")} 

          senao {
						escreva("Extrato Bancário")
						escreva("+ Depósito inicial: R$ 100.00\n")
						escreva("- Padaria: R$ 25.23\n")
						escreva("+ Pix recebido: R$ 75.90\n")
						escreva("Saldo final: R$ ", saldo, "\n")
					}
					pare


				caso 3: 
					escreva("Informe a sua senha: ")
					leia(senha_digitada)
					se (senha_digitada != senhaCorreta) {
						escreva("Senha incorreta!\n\n")	}

           senao {
						real valorSaque
						escreva("Qual o valor para saque? ")
						leia(valorSaque)
						se (valorSaque <= 0 ou valorSaque > saldo) {
							escreva("Operação não autorizada\n\n")
						} 
            senao {
							saldo = saldo - valorSaque
							escreva("Saque realizado! Novo saldo: R$ ", saldo, "\n\n")
						}
					}
					pare


				caso 4: 
					real valorDeposito
					escreva("Qual o valor para depósito? ")
					leia(valorDeposito)
					se (valorDeposito <= 0) {
						escreva("Operação não autorizada\n\n")
					} senao {
						saldo = saldo + valorDeposito
						escreva("Depósito realizado! Novo saldo: R$ ", saldo, "\n\n")
					}
					pare

				caso 5: 
					escreva("Informe a sua senha: ")
					leia(senha_digitada)
					se (senha_digitada != senhaCorreta) {
						escreva("Senha incorreta!\n\n")
					} senao {
						inteiro contaDestino
						real valorTransf
						escreva("Informe o número da conta de destino (apenas números): ")
						leia(contaDestino)
						escreva("Qual o valor para transferência? ")
						leia(valorTransf)
						
						se (valorTransf <= 0 ou valorTransf > saldo) {
							escreva("Operação não autorizada\n\n")
						} senao {
							saldo = saldo - valorTransf
							escreva("Transferência de R$ ", valorTransf, " enviada para conta ", contaDestino, "!\n\n")
						}
					}
					pare

				caso 6: 
					continuar = falso
					escreva(nome_usuario, ", foi um prazer ter você por aqui!\n")
					pare

				caso contrario: 
					escreva("Por favor, informe um número entre 1 a 6\n\n")
					pare
			}
		}
	}
}
