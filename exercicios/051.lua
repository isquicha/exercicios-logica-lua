--[[
Faça um programa que imprima na tela os números de 1 a 20, um abaixo do outro.
Depois modifique o programa para que ele mostre os números um ao lado do outro.
--]]
for i=1,20 do
    print(i)
end

for i=1,19 do
    io.write(i .. ", ")
end
io.write(20)
