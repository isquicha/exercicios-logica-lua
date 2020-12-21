--[[
Faça um Programa que leia um vetor de 5 números inteiros e mostre-os.
--]] --
lista = {}
for i = 1, 5 do
    io.write(string.format("Digite o numero da posicao %d: ", i))
    numero = tonumber(io.read())
    table.insert(lista, numero)
end

io.write("Os numeros digitados sao:")
for _, numero in pairs(lista) do io.write(string.format(" %d", numero)) end
