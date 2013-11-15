algoritmo "semnome"
// Função :
// Autor :
// Data : 12/11/2013
// Seção de Declarações
var

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
escreval("|   8) Relação de todas as vendas                          |")
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

procedimento carregaarquivo

arquivo "CLIENTES.TXT"
//arquivo "L:\algoritimo\CLIENTES.TXT"
var
cliente:vetor [1..244,1..5] de literal
x : inteiro
txt:literal
inicio
para x de 1 ate 244 faca
   leia(txt)
   y <-1
   i<-2
   palavra <- copia (txt,i,1)
   enquanto palavra <> carac(34) faca
      cliente[x,y] <- cliente[x,y] + palavra
      i<- i+1
      palavra <- copia(txt,i,1)
   fimenquanto
   y <- y + 1
   se palavra = carac (34)entao
      i <- i + 3
      palavra <- copia (txt,i,1)
      enquanto palavra <> carac(34) faca
         cliente[x,y] <-cliente[x,y] + palavra
         i<- i+1
         palavra <- copia(txt,i,1)
      fimenquanto
   fimse
   y <- y + 1
   se palavra = carac (34)entao
      i <- i + 3
      palavra <- copia (txt,i,1)
      enquanto palavra <> carac(34) faca
         cliente[x,y] <- cliente[x,y] + palavra
         i<- i+1
         palavra <- copia(txt,i,1)
      fimenquanto
   fimse
fimpara
carregararquivo2

//------------------------------------------------------------------------------
//procedimento para carregar o segundo vetor com os dados do txt

procedimento carregararquivo2

arquivo "VENDAS.TXT"

var
vendas:vetor [1..160,1..5] de literal
x : inteiro
txt:literal

inicio
para x de 1 ate 244 faca
   leia(txt)
   y <-1
   i<-2
   palavra <- copia (txt,i,1)
   enquanto palavra <> carac(34) faca
      vendas[x,y] <- vendas[x,y] + palavra
      i<- i+1
      palavra <- copia(txt,i,1)
   fimenquanto
   y <- y + 1
   se palavra = carac (34)entao
      i <- i + 3
      palavra <- copia (txt,i,1)
      enquanto palavra <> carac(34) faca
         vendas[x,y] <-vendas[x,y] + palavra
         i<- i+1
         palavra <- copia(txt,i,1)
      fimenquanto
   fimse
   y <- y + 1
   se palavra = carac (34)entao
      i <- i + 3
      palavra <- copia (txt,i,1)
      enquanto palavra <> carac(34) faca
         vendas[x,y] <- vendas[x,y] + palavra
         i<- i+1
         palavra <- copia(txt,i,1)
      fimenquanto
   fimse
fimpara

fimprocedimento

//------------------------------------------------------------------------------

inicio

fimalgoritmo
