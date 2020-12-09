--[[
Em uma eleição presidencial existem quatro candidatos.
Os votos são informados por meio de código.
Os códigos utilizados são:
    1, 2, 3, 4  - Votos para os respectivos candidatos
    (você deve montar a tabela ex: 1 - Jose/ 2- João/etc)
    5 - Voto Nulo
    6 - Voto em Branco

Faça um programa que calcule e mostre:
    O total de votos para cada candidato;
    O total de votos nulos;
    O total de votos em branco;
    A percentagem de votos nulos sobre o total de votos;
    A percentagem de votos em branco sobre o total de votos.

Para finalizar o conjunto de votos tem-se o valor zero.
--]] --
print("Candidatos: \n1 - José\n2 - João\n3 - Maria\n4 - Clara")
print("Digite 0 para sair, 5 para votar nulo ou 6 para votar em branco.")
votos = 0
candidato_1 = 0
candidato_2 = 0
candidato_3 = 0
candidato_4 = 0
nulos = 0
brancos = 0
while true do
    io.write(string.format("Digite o voto numero %d: ", votos + 1))
    voto = tonumber(io.read())
    if voto == 0 then break end
    votos = votos + 1
    if voto == 1 then
        candidato_1 = candidato_1 + 1
    elseif voto == 2 then
        candidato_2 = candidato_2 + 1
    elseif voto == 3 then
        candidato_3 = candidato_3 + 1
    elseif voto == 4 then
        candidato_4 = candidato_4 + 1
    elseif voto == 5 then
        nulos = nulos + 1
    elseif voto == 6 then
        brancos = brancos + 1
    else
        print("Voto inválido!")
        votos = votos - 1
    end
end
print(
    "\nResultado da eleição:"
        .. string.format("\nJosé teve %d votos", candidato_1)
        .. string.format("\nJoão teve %d votos", candidato_2)
        .. string.format("\nMaria teve %d votos", candidato_3)
        .. string.format("\nClara teve %d votos", candidato_4)
        .. string.format("\n%d votos foram anulados, ", nulos)
        .. string.format("um total de %.2f%%", 100 * nulos / votos)
        .. string.format("\n%d votos foram em branco, ", brancos)
        .. string.format("um total de %.2f%%", 100 * brancos / votos)
)
