--[[
João Papo-de-Pescador, homem de bem, comprou um microcomputador para controlar
o rendimento diário de seu trabalho.

Toda vez que ele traz um peso de peixes maior que o estabelecido pelo
regulamento de pesca do estado de São Paulo (50 quilos) deve pagar uma multa
de R$ 4,00 por quilo excedente.

João precisa que você faça um programa que leia a variável peso
(peso de peixes) e calcule o excesso.

Gravar na variável excesso a quantidade de quilos além do limite
e na variável multa o valor da multa que João deverá pagar.
Imprima os dados do programa com as mensagens adequadas.
--]]
print("Digite o peso da pescaria: ")
peso = tonumber(io.read())
excesso = peso - 50
multa = excesso * 4.00
print(
    string.format(
        "O excesso foi de %.2fkg, e a multa foi de R$%.2f", excesso, multa
    )
)
