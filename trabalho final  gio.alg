algoritmo "semnome"
// Função :
// Autor :
// Data : 12/11/2013
// Seção de Declarações
var
clientes:vetor [1..216] de literal
vendas:vetor [1..160] de literal

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

//contando as virgulas

funcao conta_virgula (numero: inteiro;frase:literal):inteiro
var
y,x : inteiro
inicio
x<-0
y<-0
enquanto (y<numero) faca
   x<- x+1
   se copia(frase,x,1) ="," entao
      y<- y+1
   fimse
fimenquanto

retorne(x)
fimfuncao
//------------------------------------------------------------------------------

//procedimento para carregar o vetor clientes com os dados do txt
procedimento carrega_clientes
arquivo "CLIENTES.TXT"
var
x:inteiro
sms:literal
inicio
para x de 1 ate 216 faca
   leia(sms)
   clientes[x]<-sms
fimpara

fimprocedimento
//------------------------------------------------------------------------------

//procedimento para carregar o vetor vendas com os dados do txt
procedimento carrega_vendas
arquivo "VENDAS.TXT"
var
x:inteiro
sms:literal
inicio
para x de 1 ate 160 faca
   leia(sms)
   vendas[x]<-sms
fimpara

fimprocedimento
//------------------------------------------------------------------------------

//procedimento para carregar o vetor vendas com os dados do cliente
procedimento coloca_clientes_em_vendas
var
x,y:inteiro
sms:literal
achou:logico
inicio
para x de 1 ate 160 faca
   achou <- falso
   y<-1
   enquanto (nao achou) e (y<217) faca
      se copia(vendas[x],19,6)=copia(clientes[y],2,6) entao

         achou<-verdadeiro
         vendas[x]<-vendas[x]+copia(clientes[y],10,conta_virgula(2,clientes[y])-9)
      fimse
      y<-y+1
   fimenquanto


fimpara

fimprocedimento
//------------------------------------------------------------------------------
inicio
carrega_clientes
carrega_vendas
//limpatela
coloca_clientes_em_vendas

fimalgoritmo
