--[[
Um posto está vendendo combustíveis com a seguinte tabela de descontos:
    Álcool:
        até 20 litros, desconto de 3% por litro
        acima de 20 litros, desconto de 5% por litro
    Gasolina:
        até 20 litros, desconto de 4% por litro
        acima de 20 litros, desconto de 6% por litro

Escreva um algoritmo que leia o número de litros vendidos,
o tipo de combustível (codificado da seguinte forma: A-álcool, G-gasolina),
calcule e imprima o valor a ser pago pelo cliente sabendo-se que o preço do
litro da gasolina é R$ 2,50 o preço do litro do álcool é R$ 1,90.
--]]
print("Digite quantos litros você quer abastecer: ")
litros = tonumber(io.read())
print("Digite A para álcool ou G para gasolina: ")
combustivel = io.read()

if (combustivel == 'A' or combustivel == 'a') then
    preco = litros * 1.9
    if (litros <= 20) then
        preco = preco - ( 1.9 * litros * 3 / 100)
    else
        preco = preco - ( 1.9 * litros * 5 / 100)
    end
elseif (combustivel == 'G' or combustivel == 'g') then
    preco = litros * 2.5
    if (litros <= 20) then
        preco = preco - ( 2.5 * litros * 4 / 100)
    else
        preco = preco - ( 2.5 * litros * 6 / 100)
    end
end
print(string.format("O preço a pagar é R$%.2f", preco))
