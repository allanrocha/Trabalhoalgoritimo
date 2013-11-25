algoritmo "semnome"
// Função :
// Autor :
// Data : 12/11/2013
// Seção de Declarações
var
clientes:vetor [1..216] de literal
vendas:vetor [1..160] de literal
x,num_m_notas,posi_m_notas:inteiro
opcao:inteiro
branco:literal
procedimento menu
inicio
limpatela
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
escreval("|   0) Finalizar programa                                  |")
escreval("|                                                          |")
escreval("|__________________________________________________________|")
escreval
escreval
escreva("INFORME A OPCAO DESEJADA: ")
leia(opcao)
limpatela
escolha opcao

caso 1

caso 2
   mais_nota
caso 3

caso 4

caso 5

caso 6

caso 7

caso 8
   Relacao_vendas
fimescolha
fimprocedimento
//------------------------------------------------------------------------------
procedimento organiza(tem,total:inteiro)
var
y:inteiro
inicio
para y de 1 ate (total-tem) faca
   escreva(" ")
fimpara
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

//procedimento para carregar o vetor vendas com os dados do txt
//27 vendas
//4 virgulas lucro
procedimento soma_valor_cliente(ini:inteiro;var cliente:literal;x:inteiro)
var
y,num_notas: inteiro
vendas:real
inicio
num_notas<-0
vendas<-0
para y de 1 ate 160 faca
   se (copia(vendas[y],19,6)=copia(cliente,2,6)) entao
      se ini= 28 entao
         vendas <- vendas + caracpnum(  copia(vendas[y],ini,conta_virgula(4,vendas[y])-30))
         num_notas<- num_notas+1
      senao
         vendas <- vendas + caracpnum(  copia(vendas[y],conta_virgula(4,vendas[y])+2 , conta_virgula(5,vendas[y])-conta_virgula(4,vendas[y])-3))
      fimse
   fimse
fimpara
se (vendas<>0) entao
   cliente<-cliente+carac(34)+numpcarac(vendas)+carac(34)+","
senao
   cliente<-cliente+carac(34)+carac(34)+","
fimse
se num_notas>num_m_notas entao
   num_m_notas<-num_notas
   posi_m_notas<-x
fimse
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
procedimento Relacao_vendas
var
x:inteiro
aux:literal
inicio
escreval("Código |Nome do Cliente                               |Numero|Data      |Vr Nota|Vr Lucro|")
para x de 1 ate 160 faca
   escreva(copia(vendas[x],19,6)," |")
   aux<-copia(vendas[x],conta_virgula(5,vendas[x])+2,conta_virgula(6,vendas[x])-conta_virgula(5,vendas[x])-3)
   escreva(aux)
   organiza(compr(aux),45)
   escreva(" |",copia(vendas[x],2,5)," |",copia(vendas[x],10,2),"/",copia(vendas[x],12,2),"/20",copia(vendas[x],14,2),"|")
   aux<- copia(vendas[x],28,conta_virgula(4,vendas[x])-30)
   escreva(aux)
   organiza(compr(aux),7)

   aux<-copia(vendas[x],conta_virgula(4,vendas[x])+2 , conta_virgula(5,vendas[x])-conta_virgula(4,vendas[x])-3)
   escreva("|",aux)
   organiza(compr(aux),8)
   escreval("|")
fimpara
escreva("pressione uma tecla para voltar ao menu")
leia (branco)
limpatela

fimprocedimento
//------------------------------------------------------------------------------
procedimento mais_nota
var
aux:literal
inicio
escreval("Informações do que mais comprou(numero de notas:")
escreval("Código | ")
escreva(copia(vendas[posi_m_notas],2,6)," |")
aux<- copia(clientes[posi_m_notas],11,conta_virgula(2,clientes[y])-12)
escreva(aux)
organiza(compr(aux),45)
escreva(" |")

fimprocedimento
//------------------------------------------------------------------------------
inicio
num_m_notas<-0
carrega_clientes
carrega_vendas
limpatela
coloca_clientes_em_vendas

para x de 1 ate 216 faca
   soma_valor_cliente(28,clientes[x],x)
   soma_valor_cliente(29,clientes[x],x)
fimpara

repita
   menu
ate  opcao = 0

fimalgoritmo
