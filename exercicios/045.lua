--[[
O Hipermercado Tabajara está com uma promoção de carnes que é imperdível.
Confira:

                      Até 5 Kg           Acima de 5 Kg
File Duplo      R$ 4,90 por Kg          R$ 5,80 por Kg
Alcatra         R$ 5,90 por Kg          R$ 6,80 por Kg
Picanha         R$ 6,90 por Kg          R$ 7,80 por Kg

Para atender a todos os clientes, cada cliente poderá levar apenas um dos tipos
de carne da promoção, porém não há limites para a quantidade de carne
por cliente.

Se compra for feita no cartão Tabajara o cliente receberá ainda um desconto de
5% sobre o total da compra.

Escreva um programa que peça o tipo e a quantidade de carne comprada pelo
usuário e gere um cupom fiscal, contendo as informações da compra:
    tipo de carne
    quantidade de carne
    preço total
    tipo de pagamento
    valor do desconto
    valor a pagar.
--]]
print("Digite F para filé duplo, A para alcatra e P para picanha: ")
carne = io.read()
print("Digite quantos quilos dessa carne vai comprar: ")
peso = tonumber(io.read())
print("Dinheiro ou cartão tabajara (5% de desconto)? D ou C: ")
pagamento = io.read()
preco_total = 0

print("\nHipermercado Tabajara\nCupom fiscal\n")
if (carne == 'F' or carne == 'f') then
    print("Item: Filé Duplo")
    if (peso > 5) then
        preco_total = peso * 5.8
    else
        preco_total = peso * 4.9
    end
elseif (carne == 'A' or carne == 'a') then
    print("Item: Alcatra")
    if (peso > 5) then
        preco_total = peso * 6.8
    else
        preco_total = peso * 5.9
    end
elseif (carne == 'P' or carne == 'p') then
    print("Item: Picanha")
    if (peso > 5) then
        preco_total = peso * 7.8
    else
        preco_total = peso * 6.9
    end
end
print(string.format("Quantidade: %.2fKg", peso))
print(string.format("Preço total: R$%.2f", preco_total))
if (pagamento == 'D' or pagamento == 'd') then
    print("Tipo de pagamento: Dinheiro")
    desconto = 0
    print(string.format("Desconto: R$%.2f", desconto))
    print(string.format("Valor a pagar: R$%.2f", (preco_total - desconto)))
elseif (pagamento == 'C' or pagamento == 'c') then
    print("Tipo de pagamento: Cartão Tabajara")
    desconto = preco_total * 5 / 100
    print(string.format("Desconto: R$%.2f", desconto))
    print(string.format("Valor a pagar: R$%.2f", (preco_total - desconto)))
end
