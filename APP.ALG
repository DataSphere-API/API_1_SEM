Algoritmo "semnome"
//  
//  
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 18/09/2025
Var
   // Se��o de Declara��es das vari�veis
   resultado, quantidade, opcao, pause, quantDesejada, nAtual, contador,ehPrimo, numero,i, n:inteiro
   fatorial, passo_valor, valor_inicial, termo: real
Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   enquanto opcao <>7 faca
      escreval ("------MENU CALCULADORA-------")
      escreval ("")
      escreval (" 01 - Sequ�ncia de Numeros Primos")
      escreval (" 02 - Sequ�ncia de N�meros Fatoriais ")
      escreval (" 03 - Sequ�ncia Alternada")
      escreval (" 04 - Sequ�ncia de N�meros Triangulares")
      escreval (" 05 - Sequ�ncia de Quadrados Perfeitos")
      escreval (" 06 - Sequ�ncia Geom�trica")
      escreval (" 07 - Sair")
      escreval ("")
      Escreval ("-----------------------------")
      leia (opcao)
      limpatela
      se opcao =1 entao
         escreval ("Voc� escolheu a op��o 01 - Sequ�ncia de Numeros Primos")
         escreva("Digite a quantidade de n�meros primos que voc� deseja: ")
         leia(quantDesejada)

         se quantDesejada <= 0 entao
            escreval("A quantidade deve ser maior que zero.")
         senao
            escreval("Os primeiros ", quantDesejada, " n�meros primos s�o:")
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
         escreval ("Voc� escolheu a op��o 02 - Sequ�ncia de N�meros Fatoriais")
         repita
            escreval("1 - Ver apenas o fatorial de um n�mero")
            escreval("2 - Ver a lista dos fatoriais at� o n�mero escolhido")
            escreval("Escolha uma op��o: ")
            leia(opcao)

            se (opcao < 1) ou (opcao > 2) entao
               escreval("OP��O INV�LIDA. Tente novamente.")
            fimse
         ate (opcao = 1) ou (opcao = 2)


         repita
            escreval ("Digite um n�mero entre 1 e 17:")
            leia(numero)

            se (numero < 1) ou (numero > 17) entao
               escreval ("OP��O INV�LIDA. Escolha um n�mero entre 1 e 17")
            fimse
         ate (numero >= 1) e (numero <= 17)

         fatorial <- 1

         se (opcao = 1) entao
            para i de 1 ate numero faca
               fatorial <- fatorial * i
            fimpara
            escreval("Fatorial de ", numero, " �: ", fatorial)

         senao
            para i de 1 ate numero faca
               fatorial <- fatorial * i
               escreval("Fatorial de ", i, " �: ", fatorial)
            fimpara
         fimse
         escreval("Aperte enter para voltar ao menu")
         leia(pause)
         limpatela
      fimse
      se opcao =3 entao
         escreval ("Voc� escolheu a op��o 03 - Sequ�ncia Alternada ")
         escreval("Digite o valor inicial da sua sequ�ncia: ")
         leia(valor_inicial)
         escreval("Escreva quantos termos sua sequ�ncia ter�: ")
         leia(quantidade)

         enquanto (quantidade <0) faca
            escreval ("Digite um valor valido!")
            escreval("Escreva quantos termos sua sequ�ncia ter�: ")
            leia(quantidade)
         fimenquanto

         escreval ("Escreva a raz�o da sua sequ�ncia")
         leia(passo_valor)
         contador<-0

         repita
            termo <- valor_inicial + (passo_valor * contador)

            se (contador % 2 <> 0) entao
               termo <- (-1)*termo
            fimse
            contador<- contador + 1
            escreval(contador, " - ", termo)
         ate (contador >= quantidade)
         escreval("Aperte enter para voltar ao menu")
         leia(pause)
         limpatela
      fimse
      
      se opcao = 4 entao
         escreval ("Voc� escolheu a op��o 04 - Sequ�ncia de N�meros Triangulares")
         escreval("Escolha a op��o desejada:")
         escreval("1 - En�simo (n) n�mero da sequ�ncia")
         escreval("2 - Ver a lista dos n�meros tri�ngulares at� o n�mero escolhido")
         leia(opcao)

         enquanto (opcao <1) ou (opcao >2) faca
            escreval("OP��O INV�LIDA. Tente novamente")
            leia (opcao)

         fimenquanto
         limpatela

         se (opcao = 1) entao
            escreval("Voc� escolheu encontrar o en�simo n�mero da sequ�ncia.")
            escreval("Digite a posi��o do termo que deseja visualizar (at� o 40.000�):")
            leia(i)
            enquanto (i<1) ou (i>40000) faca
               escreval("OPA��O INV�LIDA. Digite um n�mero entre 1 e 40.000:")
               leia (i)
            fimenquanto
            para n de 1 ate i faca
               termo <- n*(n+1)/2
            fimpara
            limpatela
            escreval("O",i,"� n�mero da sequ�ncia �:",termo)
         fimse

         se (opcao = 2) entao
            escreval("Voc� escolheu ver a lista dos n�meros tri�ngulares at� o n�mero escolhido.")
            escreval("Digite quantos termos deseja ver (at� 40.000 termos):")
            leia(i)
            limpatela
            enquanto (i<1) ou (i>40000) faca
               escreval("OP��O INV�LIDA. Digite um n�mero entre 1 e 40.000:")
               leia (i)
            fimenquanto
            escreval("A sequ�ncia para",i," termos �:")
            para n de 1 ate i faca
               termo <- n*(n+1)/2
               escreval(n,"� ->",termo)
            fimpara
         fimse
         escreval("Aperte enter para voltar ao menu")
         leia(pause)
         limpatela
      fimse
      se (opcao = 5) entao
         escreval ("Voc� escolheu a op��o 05 - Sequ�ncia de quadrados perfeitos")
         //digite seu codigo aqui
         escreval("Aperte enter para voltar ao menu")
         leia(pause)
         limpatela
      fimse
      se (opcao = 6) entao
         escreval ("Voc� escolheu a op��o 06 - Sequ�ncia Geom�trica")
         //digite seu codigo aqui
         escreval("Aperte enter para voltar ao menu")
         leia(pause)
         limpatela
      fimse

      se (opcao = 7) entao
         escreval ("Voc� escolheu a op��o 07 - Sair")
      fimse
      fimenquanto
Fimalgoritmo