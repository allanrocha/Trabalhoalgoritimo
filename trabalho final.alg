algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 12/11/2013

var
cliente:vetor [1..216] de literal
vendas:vetor [1..160] de literal
cont:inteiro
teste:literal
procedimento menu

var
opcao:inteiro

inicio
escreval("+--------------------  MENU DO SISTEMA  -------------------+")
escreval("|                                                          |")
escreval("|                SELECIONE A OPCAO DESEJADA                |")
escreval("|                                                          |")
escreval("|   1) Relatorio sintetico de vendas                       |")
escreval("|   2) O cliente que mais comprou (em quantidade de notas) |")
escreval("|   3) O cliente que mais comprou (em valores)             |")
escreval("|   4) O cliente que mais proporcionou lucro               |")
escreval("|   5) O cliente que menos comprou (em valores)            |")
escreval("|   6) O percentual de vendas por estado                   |")
escreval("|   7) A maior venda                                       |")
escreval("|   8) Rela��o de todas as vendas                          |")
escreval("|   9) Finalizar programa                                  |")
escreval("|                                                          |")
escreval("|__________________________________________________________|")
escreval
escreval
escreva("INFORME A OPCAO DESEJADA: ")
leia(opcao)
escolha opcao

caso 1

caso 2

caso 3

caso 4

caso 5

caso 6

caso 7

caso 8

caso 9

fimescolha
fimprocedimento


//------------------------------------------------------------------------------

//procedimento para carregar o vetor 1 com os dados do txt
//carac 34 na tabela asc � (") aspa dupla
procedimento carregaarquivo

//arquivo "CLIENTES.TXT"
arquivo "C:\Users\ti\Documents\GitHub\Trabalhoalgoritimo\CLIENTES.TXT"
//arquivo "C:\Users\allan\Documents\GitHub\Trabalhoalgoritimo\CLIENTES.TXT"
var
x,i : inteiro
txt,palavra:literal
inicio

para x de 1 ate 216 faca
   limpatela
   leia(txt)
   i<-2
   palavra <- copia (txt,i,1)
   enquanto palavra <> carac(34) faca
      cliente[x] <- cliente[x] + palavra
      i<- i+1
      palavra <- copia(txt,i,1)
   fimenquanto
   cliente[x] <- cliente [x] + ";"
   se palavra = carac (34)entao
      i <- i + 3
      palavra <- copia (txt,i,1)
      enquanto palavra <> carac(34) faca
         cliente[x] <-cliente[x] + palavra
         i<- i+1
         palavra <- copia(txt,i,1)
      fimenquanto
   fimse
   cliente[x] <- cliente [x] + ";"
   se palavra = carac (34)entao
      i <- i + 3
      palavra <- copia (txt,i,1)
      enquanto palavra <> carac(34) faca
         cliente[x] <- cliente[x] + palavra
         i<- i+1
         palavra <- copia(txt,i,1)
      fimenquanto
      cliente[x] <- cliente [x] + ";"
      se palavra = carac (34)entao
         i <- i + 3
         palavra <- copia (txt,i,1)
         enquanto palavra <> carac(34) faca
            cliente[x] <-cliente[x] + palavra
            i<- i+1
            palavra <- copia(txt,i,1)
         fimenquanto
         cliente[x] <- cliente [x] + ";"
         se palavra = carac (34)entao
            i <- i + 3
            palavra <- copia (txt,i,1)
            enquanto palavra <> carac(34) faca
               cliente[x] <- cliente[x] + palavra
               i<- i+1
               palavra <- copia(txt,i,1)
            fimenquanto
         fimse
      fimse
   fimse
fimpara
fimprocedimento
//------------------------------------------------------------------------------
//procedimento para carregar o segundo vetor com os dados do txt
//o carac 34 na tabela asc � aspa dupla(")
procedimento carregaarquivo2

arquivo "C:\Users\ti\Documents\GitHub\Trabalhoalgoritimo\VENDAS.TXT"
//arquivo "C:\Users\allan\Documents\GitHub\Trabalhoalgoritimo\VENDAS.TXT"
var
x,i: inteiro
txt,palavra:literal

inicio
para x de 1 ate 160 faca
   limpatela
   leia(txt)
   i<-2
   palavra <- copia (txt,i,1)
   enquanto palavra <> carac(34) faca
      vendas[x] <- vendas[x] + palavra
      i<- i+1
      palavra <- copia(txt,i,1)
   fimenquanto
   vendas[x] <- vendas[x] + ";"
   se palavra = carac (34)entao
      i <- i + 3
      palavra <- copia (txt,i,1)
      enquanto palavra <> carac(34) faca
         vendas[x] <-vendas[x] + palavra
         i<- i+1
         palavra <- copia(txt,i,1)
      fimenquanto
   fimse
   vendas[x] <- vendas[x] + ";"
   se palavra = carac (34)entao
      i <- i + 3
      palavra <- copia (txt,i,1)
      enquanto palavra <> carac(34) faca
         vendas[x] <- vendas[x] + palavra
         i<- i+1
         palavra <- copia(txt,i,1)
      fimenquanto
   fimse
   vendas[x] <- vendas[x] + ";"
   se palavra = carac (34)entao
      i <- i + 3
      palavra <- copia (txt,i,1)
      enquanto palavra <> carac(34) faca
         vendas[x] <-vendas[x] + palavra
         i<- i+1
         palavra <- copia(txt,i,1)
      fimenquanto
   fimse
   vendas[x] <- vendas[x] + ";"
   se palavra = carac (34)entao
      i <- i + 3
      palavra <- copia (txt,i,1)
      enquanto palavra <> carac(34) faca
         vendas[x] <-vendas[x] + palavra
         i<- i+1
         palavra <- copia(txt,i,1)
      fimenquanto
   fimse
fimpara
fimprocedimento

//------------------------------------------------------------------------------
//procedimento para montar o relatorio sintetico do programa
//carac 32 na tabela asc � espa�o
//carac 59 � ponto e virgula (;)
funcao verifica(palavra:literal):literal

var
i,x:inteiro
txt:literal
inicio
i <- 1
para x de 1 ate 216 faca
   palavra <- copia (cliente[x],i,1)
   i <- i + 1
   se palavra <> carac (59)entao
      txt <- palavra
      i <- i + 1
      repita
         palavra <- copia(cliente[x],i,1)
         i<- i + 1
         txt <- palavra + txt
      ate palavra <> carac(59)
      fimrepita
   fimse
retorne(txt)
fimpara
fimfuncao
//------------------------------------------------------------------------------
inicio
carregaarquivo
carregaarquivo2
para cont de 1 ate 216 faca
   teste <- verifica(cliente[cont])
   escreval(":",teste)
fimpara
fimalgoritmo
