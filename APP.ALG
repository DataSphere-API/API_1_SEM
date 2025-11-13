Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 23/10/2025
Var
   // Secao de declaracao de variaveis
   contador, termo1, termo2, termo3, razao, termos, opcao, pause, nAtual,ehPrimo,i, n:inteiro
   fatorial, passoValor, valorInicial, termo, sequencia: real

Inicio
   // Secao de Comandos, procedimento, funcoes, operadores, etc...
   enquanto opcao <> 10 faca
      escreval ("------MENU CALCULADORA-------")
      escreval ("")
      escreval (" 01 - Sequência de Números Primos")
      escreval (" 02 - Sequência de Números Fatoriais ")
      escreval (" 03 - Sequência Alternada")
      escreval (" 04 - Sequência de Números Triangulares")
      escreval (" 05 - Sequência de Fibonacci")
      escreval (" 06 - Sequência Geométrica")
      escreval (" 07 - Sequência de quadrados perfeitos")
      escreval (" 08 - Sequência de Cubos")
      escreval (" 09 - Sequência de Tribonacci")
      escreval (" 10 - Sair")
      escreval ("")
      Escreval ("-----------------------------")
      leia (opcao)
      limpatela
      escolha opcao

      caso 1
         escreval ("Você escolheu a opção 01 - Sequência de Números Primos")
         escreva("Digite a quantidade de númmeros primos que você deseja: ")
         leia(n)

         se n <= 0 entao
            escreval("A quantidade deve ser maior que zero.")
         senao
            escreval("Os primeiros ", n, " números primos são: ")
            nAtual <- 2
            contador <- 0

            enquanto contador < n faca
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

      caso 2
         escreval ("Você escolheu a opção 02 - Sequência de Números Fatoriais")
         repita
            escreval("1 - Ver apenas o fatorial de um número")
            escreval("2 - Ver a lista dos fatoriais até o número escolhido")
            leia(opcao)

            se (opcao < 1) ou (opcao > 2) entao
               escreval("OPÇÃO INVÁLIDA. Tente novamente.")
            fimse
         ate (opcao = 1) ou (opcao = 2)

         repita
            escreva ("Digite um número entre 1 e 17: ")
            leia(n)

            se (n < 1) ou (n > 17) entao
               escreval ("OPÇÃO INVÁLIDA. Escolha um número entre 1 e 17")
            fimse

         ate (n >= 1) e (n <= 17)

         fatorial <- 1

         se (opcao = 1) entao
            para i de 1 ate n faca
               fatorial <- fatorial * i
            fimpara
            escreval("Fatorial de ", n, " é: ", fatorial)

         senao

            para i de 1 ate n faca
               fatorial <- fatorial * i
               escreval("Fatorial de ", i, " é: ", fatorial)
            fimpara

         fimse
         escreval("Aperte enter para voltar ao menu")
         leia(pause)
         limpatela


      caso 3
         escreval ("Você escolheu a opção 03 - Sequência Alternada ")
         escreva("Digite o valor inicial da sua sequência: ")
         leia(valorInicial)
         escreva("Escreva quantos termos sua sequência terá: ")
         leia(n)

         enquanto (n <0) faca
            escreval ("Digite um valor valido!")
            escreva("Escreva quantos termos sua sequência terá: ")
            leia(n)
         fimenquanto

         escreva ("Escreva a razão da sua sequência: ")
         leia(passoValor)
         contador<-0

         repita
            termo <- valorInicial + (passoValor * contador)

            se (contador % 2 <> 0) entao
               termo <- (-1)*termo
            fimse
            contador<- contador + 1
            escreval(contador, "° ->", termo)
         ate (contador >= n)
         escreval("Aperte enter para voltar ao menu")
         leia(pause)
         limpatela


      caso 4
         escreval("Você escolheu a opção 04 - Sequência de Números Triangulares")
         escreval("Escolha a opção desejada:")
         escreval("1 - Enésimo (n) número da sequência")
         escreval("2 - Ver a lista dos números triângulares até o número escolhido")
         leia(opcao)
         enquanto (opcao <1) ou (opcao >2) faca
            escreval("OPÇÃO INVÁLIDA. Tente novamente")
            leia (opcao)

         fimenquanto
         limpatela

         se (opcao = 1) entao
            escreval("Você escolheu encontrar o enésimo número da sequência.")
            escreva("Digite a posição do termo que deseja visualizar (até o 40.000): ")
            leia(n)
            enquanto (n<1) ou (n>40000) faca
               escreval("OPÇÃO INVÁLIDA. Digite um número entre 1 e 40.000:")
               leia (n)
            fimenquanto
            para i de 1 ate n faca
               termo <- i*(i+1)/2
            fimpara
            limpatela
            escreval("O ",n,"º número da sequência é: ",termo)
         fimse

         se (opcao = 2) entao
            escreval("Você escolheu ver a lista dos números triângulares até o número escolhido.")
            escreva("Digite quantos termos deseja ver (até 40.000 termos): ")
            leia(i)
            limpatela
            enquanto (i<1) ou (i>40000) faca
               escreval("OPÇÃO INVÁLIDA. Digite um número entre 1 e 40.000:")
               leia (i)
            fimenquanto
            escreval("Sequência para ",i," termos: ")
            para n de 1 ate i faca
               termo <- n*(n+1)/2
               escreval(n,"° ->",termo)
            fimpara
         fimse
         escreval("Aperte enter para voltar ao menu")
         leia(pause)
         limpatela

      caso 5
         escreval ("Você escolheu a opção 05 - Sequência de Fibonacci")
         escreva("Escreva a quantidade de termos da sua sequência: ")
         leia(n)
         termo1<-0
         termo2<-1

         para i de 1 ate n faca
            termo1<-termo2
            termo2<-termo3
            termo3 <- termo1+termo2
            escreval(i,"° ->", termo3)
         fimpara

         escreval("Aperte enter para voltar ao menu")
         leia(pause)
         limpatela

      caso 6
         escreval ("Você escolheu a opção 06 - Sequência Geométrica")
         Escreva ("Digite o primeiro termo da sequência: ")
         leia (termo1)
         Escreva ("Digite a razão da sequência: ")
         leia (razao)
         Escreva ("Digite a quantidade de termos: ")
         leia (n)

         sequencia <- 1
         Para i de 1 ate n faca
            Escreval (i,"° ->",sequencia)
            sequencia <- sequencia*razao

         fimpara
         escreval("Aperte enter para voltar ao menu")
         leia(pause)
         limpatela

      caso 7
      //Quadrados Perfeitos
         escreval ("Você escolheu a opção 07 - Quadrados Perfeitos")
         escreval("Aperte enter para voltar ao menu")
         leia(pause)
         limpatela

      caso 8
      //Sequencia de Cubos
         escreval ("Você escolheu a opção 08 - Sequência de Cubos")
         escreval("Aperte enter para voltar ao menu")
         leia(pause)
         limpatela

      caso 9
      //Sequencia de Tribonacci
         escreval ("Você escolheu a opção 09 - Sequencia de Tribonacci")
         escreval("Aperte enter para voltar ao menu")
         leia(pause)
         limpatela

      caso 10
         escreval ("Você escolheu a opção 10 - Sair")
      fimescolha
   fimenquanto
Fimalgoritmo