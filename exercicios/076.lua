--[[
O Departamento Estadual de Meteorologia lhe contratou para desenvolver um
programa que leia as um conjunto indeterminado de temperaturas,
e informe ao final a menor e a maior temperaturas informadas,
bem como a média das temperaturas.
--]] --
maior = -math.huge
menor = math.huge
soma = 0
contador = 0
while true do
    io.write("Digite a temperatura em Kelvin. Negativa para parar: ")
    temperatura = tonumber(io.read())
    if temperatura < 0 then break end

    contador = contador + 1
    soma = soma + temperatura
    if temperatura < menor then menor = temperatura end
    if temperatura > maior then maior = temperatura end
end
print(string.format("A menor temperatura foi %fK", menor))
print(string.format("A maior temperatura foi %fK", maior))
print(string.format("A média das temperaturas foi %.3f}K", soma / contador))
