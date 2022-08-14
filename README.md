# AOC-Assembly
 Códigos em Assembly que fiz ao longo da disciplina de Arquitetura e Organização de Computadores

Descrição dos exercícios:

### gabrielcorreia_lab1

Implemente um programa em linguagem assembly que simule a atualização da data
atual. Deverá ser empregado a escrita da data no estilo americano (MM/DD/AAAA).
O programa deve ler as entradas do teclado e mostrar o resultado em modo texto.

Primeiramente, o algoritmo deve exibir a mensagem: "Entre com o mes (MM): ".
Depois, ele deve ler um valor de 01 a 12 do teclado. Se o valor não for válido,
exiba a seguinte mensagem: "Mes invalido.". Em seguida, repita a mensagem
"Entre com o mes (MM): ". Essas mensagens devem ser repetidas até que o
valor seja válido.

Depois, siga o mesmo procedimento para o dia e o ano, usando as seguintes
mensagens: "Entre com o dia (DD): ", "Dia invalido.", "Entre com o ano
(AAAA): ", "Ano invalido.". Para o dia, o programa deve ler um valor de 01 a
31. Para o ano, o programa deve ler um valor de 1980 a 2050.

Por fim, imprima a mensagem final: "Data Atual: MM/DD/AAAA", onde
MM, DD e AAAA são os valores de mês, dia e ano digitados, respectivamente.
O programa deve então ser fechado.

Exemplo de teste no QtSpim:

Console:

Entre com o mes (MM): 10

Entre com o dia (DD): 32

Dia invalido.

Entre com o dia (DD): 15

Entre com o ano (AAAA): 2021

Data Atual: 10/15/2021

### gabrielcorreia_lab2

Implemente um programa em linguagem assembly que leia como entrada um texto
(mensagem) terminado no caractere ASCII correspondente à tecla enter. Depois o
programa deve gerar como saída essa mensagem criptografada e o seu número de
caracteres. O programa deve ler a entrada do teclado e mostrar o resultado em modo
texto.

Primeiramente, o QtSpim deve exibir a mensagem: "Insira a mensagem: ".

Depois, o programa deve ler essa mensagem.

Em seguida, o programa deve contar o número de caracteres e fazer a
criptografia dessa mensagem. A criptografia a ser usada é a seguinte:
- Trocar o espaço (space) e as seguintes letras minúsculas e maiúsculas pelos
números indicados abaixo:

o, O: 0

i, I: 1

z, Z: 2

e, E: 3

a, A: 4

s, S: 5

g, G: 6

t, T: 7

b, B: 8

p, P: 9

- Trocar os números pelas letras em maiúsculo listadas abaixo:

0: O

1: I

2: Z

3: E

4: A

5: S

6: G

7: T

8: B

9: P

Por fim, o programa deve gerar as seguintes saídas nesta ordem:

"Numero total de caracteres: "

"Mensagem criptografada: "

A primeira linha deve imprimir a quantidade total de caracteres, sem contar o
último enter. Os espaços e outros caracteres especiais também são contados.
A segunda linha deve imprimir a mensagem (fornecida pelo usuário)
criptografada.
O programa deve então ser finalizado.

### gabrielcorreia_lab3

Após ter implementado um programa em linguagem assembly que solicite uma
mensagem ao usuário e imprima essa mensagem criptografada e seu número de
caracteres, conforme solicitado no Laboratório 2, acrescente neste programa a
descriptografia da mensagem criptografada, caso o usuário digite a senha correta. 
- Primeiramente, o QtSpim deve exibir a mensagem ao usuário: 
"Insira a mensagem: ".
- Depois, deve ler a mensagem escrita.
- Em seguida, como no Laboratório 2, o programa deve gerar as seguintes saídas
nesta ordem:

 "Numero total de caracteres: "

 "Mensagem criptografada: "
- A primeira linha deve imprimir a quantidade total de caracteres, sem contar o
último enter. Os espaços e outros caracteres especiais também são contados.
A segunda linha deve imprimir a mensagem (fornecida pelo usuário)
criptografada. A criptografia deve ser a mesma do Laboratório 2.
- Posteriormente, o programa deve exibir ao usuário a mensagem: "Insira a
senha: ". A senha correta deve ser 193224, sendo este um número inteiro.
Caso a senha do usuário esteja correta, o programa deve imprimir:
"Mensagem original: "
- Essa linha deve imprimir a mensagem original, ou seja, a mensagem cifrada e
decifrada de acordo com a mensagem original e a tabela de conversão dadas.
- Caso a senha não esteja correta, o programa deve imprimir:
"Senha incorreta. "
- O programa deve então ser fechado.
