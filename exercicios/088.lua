--[[
Em uma competição de ginástica, cada atleta recebe votos de sete jurados.
A melhor e a pior nota são eliminadas.
A sua nota fica sendo a média dos votos restantes.

Você deve fazer um programa que receba o nome do ginasta e as notas dos sete
jurados alcançadas pelo atleta em sua apresentação e depois informe a sua
média, conforme a descrição acima informada (retirar o melhor e o pior salto e
depois calcular a média com as notas restantes).

As notas não são informados ordenadas.
Um exemplo de saída do programa deve ser conforme o exemplo abaixo:
    Atleta: Aparecido Parente
    Nota: 9.9
    Nota: 7.5
    Nota: 9.5
    Nota: 8.5
    Nota: 9.0
    Nota: 8.5
    Nota: 9.7

    Resultado final:
    Atleta: Aparecido Parente
    Melhor nota: 9.9
    Pior nota: 7.5
    Média: 9,04
--]] --
NOTAS = 7
atletas = {}
while true do
    io.write("\nDigite o nome do atleta ou 0 para sair: ")
    nome = io.read()
    if nome == "0" then break end
    atleta = {
        ["nome"] = nome,
        ["notas"] = {},
        ["media"] = 0,
        ["melhor_nota"] = 0,
        ["pior_nota"] = 0
    }
    for _ = 1, NOTAS do
        io.write("Nota: ")
        nota = tonumber(io.read())
        table.insert(atleta.notas, nota)
    end
    table.sort(atleta.notas)
    atleta.melhor_nota = table.remove(atleta.notas, NOTAS)
    atleta.pior_nota = table.remove(atleta.notas, 1)
    for _, nota in pairs(atleta.notas) do atleta.media = atleta.media + nota end
    atleta.media = atleta.media / (NOTAS - 2)
    table.insert(atletas, atleta)
end
print("\nResultado final:")
for _, atleta in pairs(atletas) do
    print(string.format("Atleta: %s", atleta.nome))
    print(string.format("Melhor nota: %.1f", atleta.melhor_nota))
    print(string.format("Pior nota: %.1f", atleta.pior_nota))
    print(string.format("Media: %.2f", atleta.media))
end
