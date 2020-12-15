--[[
Em uma competição de salto em distância cada atleta tem direito a cinco saltos.
No final da série de saltos de cada atleta, o melhor e o pior resultados são
eliminados.

O seu resultado fica sendo a média dos três valores restantes.
Você deve fazer um programa que receba o nome e as cinco distâncias alcançadas
pelo atleta em seus saltos e depois informe a média dos saltos conforme a
descrição acima informada (retirar o melhor e o pior salto e depois
calcular a média).

Faça uso de uma lista para armazenar os saltos.
Os saltos são informados na ordem da execução, portanto não são ordenados.
O programa deve ser encerrado quando não for informado o nome do atleta.
A saída do programa deve ser conforme o exemplo abaixo:
    Atleta: Rodrigo Curvêllo

    Primeiro Salto: 6.5 m
    Segundo Salto: 6.1 m
    Terceiro Salto: 6.2 m
    Quarto Salto: 5.4 m
    Quinto Salto: 5.3 m

    Melhor salto:  6.5 m
    Pior salto: 5.3 m
    Média dos demais saltos: 5.9 m

    Resultado final:
    Rodrigo Curvêllo: 5.9 m
--]]--
atletas = {}
while true do
    io.write("Digite o nome do atleta (ou enter para encerrar o programa): ")
    nome = io.read()
    if nome == "" then
        break end
    atleta = {
        nome= nome,
        saltos= {},
        media= 0,
        melhor_salto= 0,
        pior_salto= 0,
    }
    for i = 1, 5 do
        io.write(string.format("Distancia do salto n%d: ", i))
        table.insert(atleta.saltos,
            tonumber(io.read())
        )
    end
    table.sort(atleta.saltos)
    atleta.melhor_salto = table.remove(atleta.saltos, 5)
    atleta.pior_salto = table.remove(atleta.saltos, 1)
    for _, salto in pairs(atleta.saltos) do
        atleta.media = atleta.media + salto
    end
    atleta.media = atleta.media / 3
    print(
        string.format("\nMelhor salto: %.1f m", atleta.melhor_salto)
        .. string.format("\nPior salto: %.1f m", atleta.pior_salto)
        .. string.format("\nMedia dos demais saltos: %.1f m\n", atleta.media)
    )
    table.insert(atletas, atleta)
end

print("\n\nResultado final")
for _, atleta in pairs(atletas) do
    print(string.format("%s: %.1f m", atleta.nome, atleta.media))
end