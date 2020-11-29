--[[
Faça um programa que calcule o valor total investido por um colecionador em sua
coleção de CDs e o valor médio gasto em cada um deles.
O usuário deverá informar a quantidade de CDs e o valor para em cada um.
--]] --
print("Digite a quantidade de CDs: ")
cds = tonumber(io.read())
preco = 0
for i = 1, cds do
    print(string.format("Digite o preço do CD %d: ", i))
    preco = preco + tonumber(io.read())
end
print(
    string.format(
        "Preço total: R$%.2f\nMédia de custo por CD: R$%.2f", preco,
        preco / cds
    )
)
