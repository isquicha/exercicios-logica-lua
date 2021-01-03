--[[
Faça um programa que receba a temperatura média de cada mês do ano e
armazene-as em uma lista.
Após isto, calcule a média anual das temperaturas e mostre todas as
temperaturas acima da média anual, e em que mês elas ocorreram
(mostrar o mês por extenso: 1 – Janeiro, 2 – Fevereiro, . . . ).
--]] --
meses = {
    "janeiro", "fevereiro", "março", "abril", "maio", "junho", "julho",
    "agosto", "setembro", "outubro", "novembro", "dezembro"
}
temperaturas = {}
for i = 1, 12 do
    io.write(string.format("Digite a temperatura de %s em ºC: ", meses[i]))
    table.insert(temperaturas, tonumber(io.read()))
end
media = 0
for _, valor in pairs(temperaturas) do media = media + valor end
media = media / 12
print(string.format("\nA media das temperaturas foi %.2fºC", media))
print("Meses com temperaturas acima da media: ")
for i = 1, 12 do
    if temperaturas[i] > media then
        print(string.format("%d - %s com %.2fºC", i, meses[i], temperaturas[i]))
    end
end
