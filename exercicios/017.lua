--[[
Faça um Programa para uma loja de tintas.

O programa deverá pedir o tamanho em metros quadrados da área a ser pintada.

Considere que a cobertura da tinta é de 1 litro para cada 6 metros quadrados
e que a tinta é vendida em latas de 18 litros, que custam R$ 80,00
ou em galões de 3,6 litros, que custam R$ 25,00.

Informe ao usuário as quantidades de tinta a serem compradas
e os respectivos preços em 3 situações:

    comprar apenas latas de 18 litros;
    comprar apenas galões de 3,6 litros;
    misturar latas e galões, de forma que o preço seja o menor.
        Acrescente 10% de folga e sempre arredonde os valores para cima,
        isto é, considere latas cheias.
--]]
print("Digite a área em m² a ser pintada: ")
metrosQuadrados = tonumber(io.read())

-- Para os 10% a mais que a questão pede
metrosQuadradosMaisDez = metrosQuadrados * 1.1 
 
rendimentoLitro = 6
litrosLata = 18
precoLata = 80
rendimentoLata = rendimentoLitro * litrosLata
litrosGalao = 3.6
precoGalao = 25
rendimentoGalao = rendimentoLitro * litrosGalao
 
somenteLatas = math.ceil(metrosQuadrados / rendimentoLata)
somenteGaloes = math.ceil(metrosQuadrados / rendimentoGalao)
latas = math.floor(metrosQuadradosMaisDez / rendimentoLata)
galoes = math.ceil((metrosQuadradosMaisDez % rendimentoLata) / rendimentoGalao)
 
precoSomenteLatas = somenteLatas * precoLata
precoSomenteGaloes = somenteGaloes * precoGalao
precoLatas = latas * precoLata
precoGaloes = galoes * precoGalao
precoLatasEGaloes = precoLatas + precoGaloes
 
print(
    string.format(
        'Somente Latas: %i, custando R$%.2f\n', 
        somenteLatas, precoSomenteLatas
    )
)
print(
    string.format(
        'Somente Galões: %i, custando R$%.2f\n', 
        somenteGaloes, precoSomenteGaloes
    )
)
print(
    string.format(
        'Latas: %i , Galões: %i, custando R$%.2f', 
        latas, galoes, precoLatasEGaloes
    )
)
