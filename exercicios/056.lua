--[[
Altere o programa anterior para mostrar no final a soma dos números.
--]]
print("Digite um numero: ")
primeiro_numero = tonumber(io.read())
print("Digite um numero: ")
segundo_numero = tonumber(io.read())
somatorio = 0
for i = primeiro_numero + 1, segundo_numero do
    print(i)
    somatorio = somatorio + i
end
print("Somatorio: " .. somatorio)
