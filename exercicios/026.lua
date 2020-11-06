--[[
Faça um programa que pergunte o preço de três produtos e informe qual produto
você deve comprar, sabendo que a decisão é sempre pelo mais barato.
--]]
print("Digite o preço do produto 1: ")
    preco1 = tonumber(io.read())
    print("Digite o preço do produto 2: ")
    preco2 = tonumber(io.read())
    print("Digite o preço do produto 3: ")
    preco3 = tonumber(io.read())
    if preco1 < preco2 and preco1 < preco3 then
        print(
            string.format(
                "O produto com o menor preco é o 1, custando R$%.2f", preco1
            )
        )
    elseif preco2 < preco1 and preco2 < preco3 then
        print(
            string.format(
                "O produto com o menor preco é o 2, custando R$%.2f", preco2
            )
        )
    else
        print(
            string.format(
                "O produto com o menor preco é o 3, custando R$%.2f", preco3
            )
        )
    end
