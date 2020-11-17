--[[
Altere o programa de cálculo do fatorial (61), permitindo ao usuário calcular o
fatorial várias vezes e limitando o fatorial a números inteiros positivos e
menores que 16.
--]]
while true do
    print("Digite um numero: ")
    numero = tonumber(io.read())
    if numero > 0 and numero < 16 then
        fatorial = 1
        for i = numero, 1, -1 do
            fatorial = fatorial * i
        end
        print(string.format("O fatorial de %d é %d", numero, fatorial))
        print("Deseja continuar? (S/N): ")
        
        if string.upper(io.read()) ~= "S" then break end
    end
end
