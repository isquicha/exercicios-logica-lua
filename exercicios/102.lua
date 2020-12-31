--[[
Altere o programa anterior, intercalando 3 vetores de 10 elementos cada.
--]] --
ELEMENTOS = 10
vetor1 = {}
vetor2 = {}
vetor3 = {}
vetor4 = {}
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
    io.write(
        string.format("Entre com o %do numero inteiro para o vetor 3: ", i)
    )
    table.insert(vetor3, tonumber(io.read()))
end
for i = 1, ELEMENTOS do
    table.insert(vetor4, vetor1[i])
    table.insert(vetor4, vetor2[i])
    table.insert(vetor4, vetor3[i])
end
print("O vetor com os elementos intercalados dos vetores 1, 2 e 3 eh: ")
for i = 1, ELEMENTOS * 3 do io.write(vetor4[i] .. " ") end

