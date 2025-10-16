Algoritmo "semnome"
//  
//  
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 18/09/2025
Var
   // Seção de Declarações das variáveis
   resultado, quantidade, opcao, pause, quantDesejada, nAtual, contador,ehPrimo, numero,i:inteiro
   fatorial, passo_valor, valor_inicial, termo: real
Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   enquanto opcao <>7 faca
      escreval ("------MENU CALCULADORA-------")
      escreval ("")
      escreval (" 01 - Sequência de Numeros Primos")
      escreval (" 02 - Sequência de Números Fatoriais ")
      escreval (" 03 - Sequência Alternada")
      escreval (" 04 - Sequência de Números Triangulares")
      escreval (" 05 - Sequência de quadrados perfeitos")
      escreval (" 06 - Sequência Geométrica")
      escreval (" 07 - Sair")
      escreval ("")
      Escreval ("-----------------------------")
      leia (opcao)
      limpatela
      se opcao =1 entao
         escreval ("Você escolheu a opção 01 - Sequência de Numeros Primos")

         //Entrada do usuario
         escreva("Digite a quantidade de números primos que você deseja: ")
         leia(quantDesejada)
         // verificador
         se quantDesejada <= 0 entao
            escreval("A quantidade deve ser maior que zero.")
         senao
            escreval("Os primeiros ", quantDesejada, " números primos são:")
            //contador
            nAtual <- 2
            contador <- 0

            enquanto contador < quantDesejada faca
               ehPrimo <- 1

               para i de 2 ate nAtual - 1 faca
                  se (nAtual % i = 0) entao
                     ehPrimo <- 0
                  fimse
               fimpara

               se ehPrimo = 1 entao
                  escreval(nAtual)
                  contador <- contador + 1
               fimse

               nAtual <- nAtual + 1
            fimenquanto
         fimse
         escreval("Aperte enter para voltar ao menu")
         leia(pause)
         limpatela
      fimse
      se opcao =2 entao
         escreval ("Você escolheu a opção 02 - Sequência de Números Fatoriais")
         repita
            escreval("MENU DE OPÇÕES")
            escreval("1 - Ver apenas o fatorial de um número")
            escreval("2 - Ver a lista dos fatoriais até o número escolhido")
            escreval("Escolha uma opção: ")
            leia(opcao)

            se (opcao < 1) ou (opcao > 2) entao
               escreval("OPÇÃO INVÁLIDA. Tente novamente.")
            fimse
         ate (opcao = 1) ou (opcao = 2)


         repita
            escreval ("Digite um número entre 1 e 17:")
            leia(numero)

            se (numero < 1) ou (numero > 17) entao
               escreval ("ENTRADA INVÁLIDA, ESCOLHA UM NÚMERO DE 1 ATÉ 17")
            fimse
         ate (numero >= 1) e (numero <= 17)

         fatorial <- 1

         se (opcao = 1) entao
            para i de 1 ate numero faca
               fatorial <- fatorial * i
            fimpara
            escreval("Fatorial de ", numero, " é: ", fatorial)

         senao
            para i de 1 ate numero faca
               fatorial <- fatorial * i
               escreval("Fatorial de ", i, " é: ", fatorial)
            fimpara
         fimse
         escreval("Aperte enter para voltar ao menu")
         leia(pause)
         limpatela
      fimse
      se opcao =3 entao
         escreval ("Você escolheu a opção 03 - Sequência Alternada ")
         escreval("BEM-VINDO(A) À CALCULADORA DE SEQUÊNCIA ALTERNADA!")
         escreval("É uma sequência em que os sinais dos termos se alternam entre positivo e negativo de forma regular. ")

         ESCREVAL("Digite o valor inicial da sua sequência: ")
         leia(valor_inicial)
         ESCREVAL("Escreva quantos termos sua sequência terá: ")
         leia(quantidade)
         //verifica se a quantidade é válida
         enquanto (quantidade <0) faca
            escreval ("Digite um valor valido!")
            escreval("Escreva quantos termos sua sequência terá: ")
            leia(quantidade)
         fimenquanto
         ESCREVAL ("Escreva a razão da sua sequência")
         leia(passo_valor)
         //inicia o contador em 0
         contador<-0
         
         REPITA
            termo <- valor_inicial + (passo_valor * contador)

            se (contador % 2 <> 0) entao
               termo <- (-1)*termo
            fimse
            contador<- contador + 1
            ESCREVAL(contador, " - ", termo)
         ATE (contador >= quantidade)
         escreval("Aperte enter para voltar ao menu")
         leia(pause)
         limpatela
      fimse
      se opcao = 4 entao
         escreval ("Você escolheu a opção 04 - Sequência de Números Triangulares")
         //digite seu codigo aqui
         escreval("Aperte enter para voltar ao menu")
         leia(pause)
         limpatela
      fimse
      se opcao = 5 entao
         escreval ("Você escolheu a opção 05 - Sequência de quadrados perfeitos")
         //digite seu codigo aqui
         escreval("Aperte enter para voltar ao menu")
         leia(pause)
         limpatela
      fimse
      se opcao = 6 entao
         escreval ("Você escolheu a opção 06 - Sequência Geométrica")
         //digite seu codigo aqui
         escreval("Aperte enter para voltar ao menu")
         leia(pause)
         limpatela
      fimse

      se opcao =7 entao
         escreval ("Você escolheu a opção 07 - Sair")
      fimse
   fimenquanto

Fimalgoritmo