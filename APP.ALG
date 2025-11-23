Algoritmo "Calculadora Avançada"
Var
   contador, termo1, termo2, termo3,termo4, razao, termos, opcao, pause, nAtual,ehPrimo,i,j, n,quadPfto:inteiro
   fatorial, passoValor, valorInicial, termo, sequencia:real

Inicio
   enquanto opcao <> 10 faca
      escreval ("----------- MENU CALCULADORA -----------")
      escreval ("")
      escreval (" 01 - Sequência de Números Primos")
      escreval (" 02 - Sequência de Números Fatoriais ")
      escreval (" 03 - Sequência Alternada")
      escreval (" 04 - Sequência de Números Triangulares")
      escreval (" 05 - Sequência de Fibonacci")
      escreval (" 06 - Sequência Geométrica")
      escreval (" 07 - Sequência de Quadrados Perfeitos")
      escreval (" 08 - Sequência de Cubos")
      escreval (" 09 - Sequência de Tribonacci")
      escreval (" 10 - Sair")
      escreval ("")
      Escreval ("----------------------------------------")
      leia (opcao)
      limpatela
      escolha opcao

      caso 1
         escreval("Você escolheu a opção 01 - Sequência de Números Primos")
         escreval("Digite a quantidade de números primos que você deseja: ")
         leia(n)
         limpatela

         enquanto n <= 0 faca
            escreval("Digite um número maior que zero:")
            leia(n)
            limpatela
         fimenquanto

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
         escreval("Aperte enter para voltar ao menu")
         leia(pause)
         limpatela

      caso 2
         escreval ("Você escolheu a opção 02 - Sequência de Números Fatoriais")
         repita
            escreval("1 - Ver apenas o fatorial de um número")
            escreval("2 - Ver a lista dos fatoriais até o número escolhido")
            leia(opcao)
            limpatela
            se (opcao < 1) ou (opcao > 2) entao
               escreval("Opção Invalida! Tente novamente.")
            fimse
         ate (opcao = 1) ou (opcao = 2)

         repita
            escreva ("Digite um número entre 1 e 17: ")
            leia(n)
            limpatela
            se (n < 1) ou (n > 17) entao
               escreval ("Opção Inválida! Escolha um número entre 1 e 17")
            fimse
         ate (n >= 1) e (n <= 17)

         fatorial <- 1

         se (opcao = 1) entao
            para i de 1 ate n faca
               fatorial <- fatorial * i
            fimpara
            escreval("Fatorial de ", n, " é:", fatorial)
         senao
            para i de 1 ate n faca
               fatorial <- fatorial * i
               escreval("Fatorial de", i," é:", fatorial)
            fimpara
         fimse

         escreval("Aperte enter para voltar ao menu")
         leia(pause)
         limpatela


      caso 3
         escreval ("Você escolheu a opçãoo 03 - Sequência Alternada ")
         escreva("Digite o valor inicial da sua sequência: ")
         leia(valorInicial)
         escreva("Escreva quantos termos sua sequência terá: ")
         leia(n)
         limpatela

         enquanto (n <= 0) faca
            escreval ("Opção inválida! Digite um valor maior que 0.")
            escreva("Escreva quantos termos sua sequência terá:")
            leia(n)
         fimenquanto

         escreva ("Escreva a razão da sua sequência: ")
         leia(passoValor)
         contador <- 0

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
         escreval("Você escolheu a opçãoo 04 - Sequência de Números Triangulares")
         escreval("Escolha a opçãoo desejada:")
         escreval("1 - Enésimo (n) número da sequência")
         escreval("2 - Ver a lista dos números triângulares até o número escolhido")
         leia(opcao)
         limpatela
         enquanto (opcao <1) ou (opcao >2) faca
            escreval("Opção Inválida! Tente novamente")
            escreval("1 - Enésimo (n) número da sequência")
            escreval("2 - Ver a lista dos números triângulares até o número escolhido")
            leia (opcao)
            limpatela
         fimenquanto
         limpatela

         se (opcao = 1) entao
            escreval("Você escolheu encontrar o enésimo número da sequência.")
            escreva("Digite a posiçãoo do termo que deseja visualizar (1 a 40.000): ")
            leia(n)
            limpatela
            enquanto (n<1) ou (n>40000) faca
               escreval("Opção Inválida! Digite um número entre 1 e 40.000:")
               leia (n)
               limpatela
            fimenquanto
            para i de 1 ate n faca
               termo <- i*(i+1)/2
            fimpara
            limpatela
            escreval("O",n,"° número da sequência é:",termo)
         fimse

         se (opcao = 2) entao
            escreval("Você escolheu ver a lista dos números triãngulares até o número escolhido.")
            escreva("Digite quantos termos deseja ver (atÃ© 40.000 termos): ")
            leia(i)
            limpatela
            enquanto (i<1) ou (i>40000) faca
               escreval("Opção Inválida! Digite um número entre 1 e 40.000:")
               leia (i)
               limpatela
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
         escreval ("Você escolheu a opçãoo 05 - Sequência de Fibonacci")
         escreva("Escreva a quantidade de termos da sua sequência:")
         leia(n)
         limpatela
         enquanto n <= 0 faca
            escreval("Opção inválida! Tente novamente.")
            escreva("Escreva a quantidade de termos da sua sequência:")
            leia(n)
            limpatela
         fimenquanto
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
         Escreval ("Digite o primeiro termo da sequência: ")
         leia (termo1)
         Escreval ("Digite a razão da sequência:")
         leia (razao)
         Escreval("Digite a quantidade de termos:")
         leia (n)
         enquanto n <= 0 faca
            escreval ("Quantidade inválida! digite uma quantidade maior que 0:")
            leia (n)
            limpatela
         fimenquanto

         sequencia <- 1
         Para i de 1 ate n faca
            Escreval (i,"° ->",sequencia)
            sequencia <- sequencia*razao

         fimpara
         escreval("Aperte enter para voltar ao menu")
         leia(pause)
         limpatela

      caso 7
         escreval ("Você escolheu a opção 07 - Quadrados Perfeitos")
         escreval("Escolha a opção desejada:")
         escreval("1 - Enésimo (n) número da sequência")
         escreval("2 - Ver a lista dos quadrados perfeitos até a posição escolhida")
         escreval("3 - Validar se o número escolhido é uma quadrado perfeito")
         leia(opcao)
         limpatela
         Enquanto (opcao <1) ou (opcao >3) faca
            escreval("Opção inválida! Escolha a opção desejada:")
            escreval("1 - Enésimo (n) número da sequência")
            escreval("2 - Ver a lista dos quadrados perfeitos até a posição escolhida")
            escreval("3 - Validar se o nú mero escolhido é uma quadrado perfeito")
            leia(opcao)
            limpatela
         fimenquanto
         se opcao = 1 entao
            escreval("Digite o enésimo (n) termo que deseja visualizar:")
            leia(n)
            limpatela
            enquanto n < 0 faca
               escreval("Digite um número maior que 0:")
               leia(n)
               limpatela
            fimenquanto
            Para i de 1 ate n faca
               quadPfto <- i*i
            fimpara
            escreval("O",n,"° termo da sequência é:",quadPfto)
         fimse
         se opcao = 2 entao
            escreval("Digite o enésimo termo da sequência para obter a lista:")
            leia(n)
            limpatela
            enquanto n < 0 faca
               escreval("Digite um número maior que 0:")
               leia(n)
               limpatela
            fimenquanto
            Para i de 1 ate n faca
               quadPfto <- i*i
               escreval(i,"° ->",quadPfto)
            fimpara
         fimse
         se opcao = 3 entao
            escreval("Digite o número que deseja validar:")
            leia(n)
            limpatela
            Para i de 1 ate n faca
               quadPfto <- i*i
               se quadPfto = n entao
                  j <- 1
               fimse
            fimpara
            se j = 1 entao
               escreval(n," é um quadrado perfeito.")
            senao
               escreval(n," não é um quadrado perfeito.")
            fimse
         fimse

         escreval("Aperte enter para voltar ao menu")
         leia(pause)
         limpatela

      caso 8
         escreval("Você escolheu a opção 08 - Sequência de Cubos")
         escreval("Escolha a opção desejada:")
         escreval("1 - Enésimo (n) número da sequência")
         escreval("2 - Ver a sequência de cubos até o número escolhido")
         leia(opcao)
         limpatela
         enquanto (opcao <1) ou (opcao >2) faca
            escreval("Opção inválida! Tente novamente.")
            escreval("1 - Enésimo (n) número da sequência")
            escreval("2 - Ver a sequência de cubos até o número escolhido")
            leia (opcao)
            limpatela
         fimenquanto

         se (opcao = 1) entao
            escreval("Você escolheu ver enésimo (n) número da sequência")
            escreval("Digite o número da sequência:")
            leia (n)
            limpatela
            escreval("O ",n,"° número da sequência é:",n*n*n)
         fimse

         se (opcao = 2) entao
            escreval("Você escolheu ver a sequência de cubos até o número escolhido.")
            escreval("Digite quantos termos deseja ver: ")
            leia (n)
            limpatela
            i <- 1
            para i de i ate n faca
               escreval (i,"° -> ",i*i*i)
            fimpara
         fimse

         escreval("Aperte enter para voltar ao menu")
         leia(pause)
         limpatela

      caso 9
         escreval ("Você escolheu a opção 09 - Sequencia de Tribonacci")
         escreval("Escolha a opção desejada:")
         escreval("1 - Enésimo (n) número da sequência")
         escreval("2 - Ver a lista dos números até a posição escolhida")
         leia(opcao)
         limpatela
         enquanto (opcao <1) ou (opcao >2) faca
            escreval("Opção inválida! Tente novamente")
            escreval("1 - Enésimo (n) número da sequência")
            escreval("2 - Ver a lista dos números até a posição escolhida")
            leia (opcao)
            limpatela
         fimenquanto
         limpatela
         se (opcao = 1) entao
            escreval("Digite a posição do termo desejado:")
            leia(n)
            limpatela
            enquanto n <= 0 faca
               escreval("Digite um número maior que 0:")
               leia(n)
               limpatela
            fimenquanto
            termo1<-0
            termo2<-1
            termo3<-0
            termo4<-0
            para i de 1 ate n faca
               termo1 <- termo2
               termo2 <- termo3
               termo3 <- termo4
               termo4 <- termo1+termo2+termo3
            fimpara
            escreval("O",i,"° termo da sequência é:", termo4)
         fimse
         se opcao = 2 entao
            escreval("Escreva a quantidade de termos da sua sequência:")
            leia(n)
            limpatela
            enquanto n <= 0 faca
               escreval("Digite um número maior que 0:")
               leia(n)
               limpatela
            fimenquanto
            termo1<-0
            termo2<-1
            termo3<-0
            termo4<-0
            para i de 1 ate n faca
               termo1<-termo2
               termo2<-termo3
               termo3 <- termo4
               termo4 <- termo1+termo2+termo3
               escreval(i,"° ->", termo4)
            fimpara
         fimse

         escreval("Aperte enter para voltar ao menu")
         leia(pause)
         limpatela

      caso 10
         escreval ("Você escolheu a opção 10 - Sair")
      fimescolha
   fimenquanto
Fimalgoritmo