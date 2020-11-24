--[[
Numa eleição existem três candidatos.
Faça um programa que peça o número total de eleitores.
Peça para cada eleitor votar e ao final mostrar o número de votos
de cada candidato.
--]] --
votos_candidato_1 = 0
votos_candidato_2 = 0
votos_candidato_3 = 0
print("Digite o numero de eleitores: ")
eleitores = tonumber(io.read())
for i = 1, eleitores do
    print(
        "Digite o numero (1/2/3) do candidato em quem o "
            .. string.format("eleitor %d quer votar: ", i)
    )
    voto = io.read()
    if voto == "1" then votos_candidato_1 = votos_candidato_1 + 1 end
    if voto == "2" then votos_candidato_2 = votos_candidato_2 + 1 end
    if voto == "3" then votos_candidato_3 = votos_candidato_3 + 1 end
end
print(
    "Votação encerrada"
        .. string.format("\nCandidato 1: %d voto(s)", votos_candidato_1)
        .. string.format("\nCandidato 2: %d voto(s)", votos_candidato_2)
        .. string.format("\nCandidato 3: %d voto(s)", votos_candidato_3)
)
