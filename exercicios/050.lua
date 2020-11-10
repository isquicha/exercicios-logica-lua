--[[
Altere o programa anterior permitindo ao usuário informar as populações e as
taxas de crescimento iniciais. Valide a entrada e permita repetir a operação.
--]]
continuar = true
while continuar do
    print("Digite a população de A: ")
    populacao_A = tonumber(io.read())
    print("Digite a população de B: ")
    populacao_B = tonumber(io.read())
    print("Digite o crescimento percentual da população de A: ")
    crescimento_A = tonumber(io.read())
    print("Digite o crescimento percentual da população de B: ")
    crescimento_B = tonumber(io.read())
    anos = 0
    while true do
        anos = anos + 1
        populacao_A = populacao_A * (1 + (crescimento_A/100))
        populacao_B = populacao_B * (1 + (crescimento_B/100))
        if populacao_A >= populacao_B then
            print(
                string.format(
                    [[Demorou %d anos para a população de A 
                    passar ou igualar a de B.]], anos
                )
            )
            print(
                string.format(
                    "A tem %.0f habitantes e B tem %.0f.",
                    populacao_A, populacao_B
                )
            )
            break
        end
    end
    print("Deseja continuar (S/N)? > ")
    continuar = string.upper(io.read()) == 'S'
end
