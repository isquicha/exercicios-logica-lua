--[[
Faça um programa que calcule o mostre a média aritmética de N notas.
--]]
notas = 0
contador = 0
continuar = "S"
while continuar == "S" do
    print("Digite uma nota: ")
    nota = tonumber(io.read())
    notas = notas + nota
    contador = contador + 1
    print("Deseja continuar? (S/N): ")
    continuar = string.upper(io.read())
end
print(string.format("A média das notas é %.2f.", notas / contador))
