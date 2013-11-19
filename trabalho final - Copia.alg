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
//procedimento para carregar o vetor clientes com os dados do txt
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

inicio
carrega_clientes
carrega_vendas
fimalgoritmo
