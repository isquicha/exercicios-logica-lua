--[[
Uma fruteira está vendendo frutas com a seguinte tabela de preços:

                      Até 5 Kg           Acima de 5 Kg
Morango         R$ 2,50 por Kg          R$ 2,20 por Kg
Maçã            R$ 1,80 por Kg          R$ 1,50 por Kg

Se o cliente comprar mais de 8 Kg em frutas ou o valor total da compra
ultrapassar R$ 25,00, receberá ainda um desconto de 10% sobre este total.

Escreva um algoritmo para ler a quantidade (em Kg) de morangos e a quantidade
(em Kg) de maças adquiridas e escreva o valor a ser pago pelo cliente.
--]]
print("Digite quantos quilos de morango foram comprados: ")
morango = tonumber(io.read())
print("Digite quantos quilos de maçã foram comprados: ")
maca = tonumber(io.read())
valor = 0

if (morango <= 5) then
    valor = valor + (morango * 2.5)
else
    valor = valor + (morango * 2.2)
end
if (maca <= 5) then
    valor = valor + (maca * 1.8)
else
    valor = valor + (maca * 1.5)
end
 
if ((morango + maca) > 8 or valor > 25) then
    valor = valor - (valor * 10 / 100)
end
print(string.format("O valor a ser pago é R$%.2f", valor))
