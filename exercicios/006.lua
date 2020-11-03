--[[
Faça um Programa que peça o raio de um círculo, calcule e mostre sua área.
--]]
print("Digite o raio do círculo: ")
raio = tonumber(io.read())
-- math.pi retora a constante pi. 
-- math.pow eleva o primeiro argumento (nesse caso o raio) ao segundo argumento (nesse caso, a 2)
-- visto que a fórmula do raio é pi * raio²
area = math.pi * math.pow(raio, 2)
-- algo equivalente a linha anterior é:
-- area = 3.141592653589793 * raio * raio
-- Para exibir a área na tela você provavelmente usou algo assim:
-- print("A área é: " .. area)
-- vou inserir a ideia de formatação de saída, utilizando a string.format()
-- ela vai retornar um valor formatado semelhante a como as coisas são formatadas
-- no printf do C/C++. Pesquise sobre, caso queira. Mas pode continuar utilizando
-- o print igual ao anterior, mas verá que há uma bela diferença!
print(string.format("A area é: %.2f", area))
