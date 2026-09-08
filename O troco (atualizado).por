programa {
    real saldo = 150.00
    cadeia nome
    inteiro senhaCorreta = 3589

    funcao inicio() {
     se (nome == "") {
         escreva("Bem-vindo ao Sistema Bancário, qual seu nome? ")
         leia(nome)
         limpa()
         escreva("Olá ", nome, ", é um prazer ter você por aqui!\n")}

    inteiro opcao
    escreva("Escolha uma opção:\n")
    escreva("1. Ver saldo\n")
    escreva("2. Ver extrato\n")
    escreva("3. Fazer saque\n")
    escreva("4. Fazer depósito\n")
    escreva("5. Fazer transferência\n")
    escreva("6. Sair\n")
    leia(opcao)
    limpa()

     escolha (opcao) {
      caso 1:
            verSaldo()
             pare

      caso 2:
            verExtrato()
             pare

      caso 3:
            fazerSaque()
             pare

      caso 4:
             fazerDeposito()
             pare

      caso 5:
             fazerTransferencia()
             pare

      caso 6:
             sair()
             pare

      caso contrario:
            erro()
                pare
        }
    }

    funcao Senha() {
        inteiro senhaInformada
        escreva("Informe a sua senha: ")
        leia(senhaInformada)
        
        se (senhaInformada != senhaCorreta) {
            escreva("Senha incorreta!\n")
            inicio()
        }
    }

    funcao verSaldo() {
        Senha()
        escreva("Seu saldo atual é: R$ ", saldo, "\n\n")
        inicio()
    }

    funcao verExtrato() {
        Senha()
        escreva("Extrato Bancário:\n")
        escreva("+ Depósito inicial: R$ 145,00\n")
        escreva("- Compra Padaria: R$ 30,00\n")
        escreva("+ Depósito Pix: R$ 55,00\n")
        escreva("- Supermercado: R$ 70,00\n")
        escreva("\n")
        inicio()
    }


    funcao fazerDeposito() {
        real deposito
        escreva("Qual o valor para depósito? ")
        leia(deposito)
        
        se (deposito <= 0) {
          escreva("Operação não autorizada\n\n")
          fazerDeposito()
        } senao {
          saldo = saldo + deposito
          verSaldo()
        }
    }

    funcao fazerSaque() {
        Senha()
        real saque
        escreva("Qual o valor para saque?")
        leia(saque)
        
        se (saque <= 0 ou saque > saldo) {
            escreva("Operação não autorizada\n\n")
            fazerSaque()
        } senao {
            saldo = saldo - saque
            verSaldo()
        }
    }

    funcao fazerTransferencia() {
        Senha()
        inteiro contaDestino
        escreva("Informe o número da conta de destino: ")
        leia(contaDestino)

        real transferencia
        escreva("Qual o valor para transferência? ")
        leia(transferencia)
        
        se (transferencia <= 0 ou transferencia > saldo) {
            escreva("Operação não autorizada\n\n")
            fazerTransferencia()
        } senao {
            saldo = saldo - transferencia
            verSaldo()
        }
    }

    funcao erro() {
        escreva("Por favor, informe um número entre 1 a 6\n\n")
        inicio()
    }

    funcao sair() {
        escreva(nome, ", foi um prazer ter você por aqui!\n")
    }
}
