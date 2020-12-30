--[[
Faça um Programa que leia dois vetores com 10 elementos cada.
Gere um terceiro vetor de 20 elementos, cujos valores deverão ser compostos
pelos elementos intercalados dos dois outros vetores.
--]] --
ELEMENTOS = 10
vetor1 = {}
vetor2 = {}
vetor3 = {}
for i = 1, ELEMENTOS do
    io.write(
        string.format("Entre com o %do numero inteiro para o vetor 1: ", i)
    )
    table.insert(vetor1, tonumber(io.read()))
end
for i = 1, ELEMENTOS do
    io.write(
        string.format("Entre com o %do numero inteiro para o vetor 2: ", i)
    )
    table.insert(vetor2, tonumber(io.read()))
end
for i = 1, ELEMENTOS do
    table.insert(vetor3, vetor1[i])
    table.insert(vetor3, vetor2[i])
end
print("O vetor com os elementos intercalados dos vetores 1 e 2 eh: ")
for i = 1, ELEMENTOS * 2 do io.write(vetor3[i] .. " ") end
