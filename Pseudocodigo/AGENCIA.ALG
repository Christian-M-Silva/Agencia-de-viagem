Algoritmo "Agencia"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Carlos Fico
// Descri��o   : Faz o cadastro e consulta de um cliente para uma agencia de viagens
// Autor(a)    : Christian Morais Silva
// Data atual  : 23/10/2021
Var
   quero, i, vezes: inteiro
   tabela: vetor[1..50,1..4] de caracter
   cpf: caracter

Inicio
   escreval("Ol� seja bem-vindo(a) me chamo Alex e serei seu guia nessa viagem")
   escreval()
   escreval("Para comer�armos digite o n�mero que corresponde a op��o desejada:")
   escreval()
   escreval("1- Fazer cadastro do(a) cliente")
   escreval("2- Fazer consulta do cadastro do(a) cliente")
   escreval("3- Finalizar programa")
   escreval()
   leia(quero)
   limpatela

   enquanto (quero = 1) ou (quero = 2) faca
      se (quero = 1) entao
         escreval("-----------------Bem-vindo(a) a tela de cadastro-----------------")
         escreval()
         escreval("Para comer�armos digite quantas pessoa voc� quer cadastrar em forma n�merica(Max.50 pessoas)")
         escreval()
         leia(i)
         limpatela

         para i de 1 ate i faca
            escreval("Digite o nome completo do(a) cliente")
            leia(tabela[i, 1])
            escreval()

            escreval("Digite a idade do(a) cliente")
            leia(tabela[i,2])
            escreval()

            escreval("Digite o cpf do(a) cliente (somente n�meros)")
            leia(tabela[i,3])
            escreval()

            escreval("Digite o local de destino do(a) cliente")
            leia(tabela[i,4])
            escreval()

            escreval("Cliente ", tabela[i, 1] ," cadastrado")
            limpatela
         fimpara


         escreval("Cadastro concluido")
         limpatela

         escreval("O que deseja fazer agora?")
         escreval
         escreval("Digite o n�mero que corresponde a op��o desejada:")
         escreval()
         escreval("1- Refazer cadastro do(a) cliente")
         escreval("2- Fazer consulta do cadastro do(a) cliente")
         escreval("3- Finalizar programa")
         escreval()
         leia(quero)
         limpatela

      senao se (quero =2)faca
         escreval("Digite o cpf do(a) cliente que deja consultar")
         leia(cpf)
         escreval()
         vezes := 0
         para i de 1 ate 50 faca
            se (cpf = tabela[i, 3]) entao
               escreval("Nome| Idade | Cpf | Local de destino")
               escreval()
               escreval(tabela[i, 1], " | " ,tabela[i, 2], " | " ,tabela[i, 3], " | " ,tabela[i, 4])
               vezes:= vezes + 1
               escreval()
            fimse
         fimpara
         se (vezes = 0) entao
            escreval("Cliente n�o cadastrado, cadastre um cliente")
            escreval()
         fimse
         escreval("Digite o n�mero que corresponde a op��o desejada:")
         escreval()
         escreval("1- Refazer cadastro do(a) cliente")
         escreval("2- Fazer consulta do cadastro do(a) cliente")
         escreval("3- Finalizar programa")
         escreval()
         leia(quero)
         limpatela
      fimse
   fimenquanto

   se(quero = 3) entao
      escreval("O programa ir� se encerrar at� uma proxima oportunidade")
      escreval()
      escreval("-----------------Fim do programa-----------------")
   senao se(quero !=1) e (quero !=2) e (quero !=3) entao
      escreval("A op��o que voc� selecionou n�o corresponde com nenhuma do menu, o programa ir� se encerrar.")
   fimse


Fimalgoritmo