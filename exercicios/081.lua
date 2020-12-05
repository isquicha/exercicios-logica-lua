--[[
Foi feita uma estatística em cinco cidades brasileiras para coletar dados sobre
acidentes de trânsito.

Foram obtidos os seguintes dados:
    Código da cidade;
    Número de veículos de passeio (em 1999);
    Número de acidentes de trânsito com vítimas (em 1999).

Deseja-se saber:
    Qual o maior e menor índice de acidentes de transito
        e a que cidade pertence;
    Qual a média de veículos nas cinco cidades juntas;
    Qual a média de acidentes de trânsito nas cidades com menos de
        2.000 veículos de passeio.
--]] --
maior_indice = 0
codigo_maior_indice = 0
menor_indice = 100000000000000
codigo_menor_indice = 0
total_de_veiculos = 0
cidades_menos_de_2000 = 0
acidentes_cidades_menos_de_2000 = 0

for _ = 1, 5 do
    io.write("Digite o codigo da cidade: ")
    codigo = tonumber(io.read())
    io.write("Digite o número de veículos de passeio: ")
    veiculos = tonumber(io.read())
    io.write("Digite o número de acidentes: ")
    acidentes = tonumber(io.read())

    if acidentes > maior_indice then
        maior_indice = acidentes
        codigo_maior_indice = codigo
    end
    if acidentes < menor_indice then
        menor_indice = acidentes
        codigo_menor_indice = codigo
    end

    total_de_veiculos = total_de_veiculos + veiculos

    if veiculos < 2000 then
        cidades_menos_de_2000 = cidades_menos_de_2000 + 1
        acidentes_cidades_menos_de_2000 =
            acidentes_cidades_menos_de_2000 + acidentes
    end
end
print(
    string.format(
        "A cidade com maior índice de acidentes é a %d", codigo_maior_indice
    ) .. string.format(" com %d acidentes", maior_indice)
)
print(
    string.format(
        "A cidade com menor índice de acidentes é a %d", codigo_menor_indice
    ) .. string.format(" com %d acidentes", menor_indice)
)
print(string.format("A média de veículos é de %.2f", total_de_veiculos / 5))
print(
    "A média de acidentes em cidades com menos de 2000 veículos é de "
        .. string.format(
            "%.2f", acidentes_cidades_menos_de_2000 / cidades_menos_de_2000
        )
)

