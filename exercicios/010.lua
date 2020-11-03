--[[
Faça um Programa que peça a temperatura em graus Celsius, transforme e mostre
em graus Farenheit.
--]]
print("Digite a temperatura em graus Celsius: ")	
tempCelsius = tonumber(io.read())
tempFarenheit = (9 * tempCelsius / 5) + 32
-- usarei novamente a formatação, mas você pode fazer como na ultima linha
print(string.format("Isso equivale a %.2f graus Farenheit", tempFarenheit))
-- print("Isso equivale a " .. tempFarenheit .. " graus Farenheit")	
