--[[
O cardápio de uma lanchonete é o seguinte:
    Especificação   Código  Preço
    Cachorro Quente 100     R$ 1,20
    Bauru Simples   101     R$ 1,30
    Bauru com ovo   102     R$ 1,50
    Hambúrguer      103     R$ 1,20
    Cheeseburguer   104     R$ 1,30
    Refrigerante    105     R$ 1,00
Faça um programa que leia o código dos itens pedidos e as quantidades
desejadas.

Calcule e mostre o valor a ser pago por item (preço * quantidade) e o total
geral do pedido.

Considere que o cliente deve informar quando o pedido deve ser encerrado.
--]] --
quantidade_produto_100 = 0
quantidade_produto_101 = 0
quantidade_produto_102 = 0
quantidade_produto_103 = 0
quantidade_produto_104 = 0
quantidade_produto_105 = 0
total = 0

print(
    "Produto         Codigo  Custo"
        .. "\n--------------------------------------"
        .. "\nCachorro Quente 100     R$ 1.20"
        .. "\nBauru Simples   101     R$ 1.30"
        .. "\nBauru com ovo   102     R$ 1.50"
        .. "\nHamburguer      103     R$ 1.20"
        .. "\nCheeseburguer   104     R$ 1.30"
        .. "\nRefrigerante    105     R$ 1.00\n"
)

while true do
    io.write("Digite o codigo do produto (ou 0 para encerrar): ")
    codigo = tonumber(io.read())
    if codigo == 0 then break end
    if codigo <= 105 and codigo >= 100 then
        io.write("Digite a quantidade desse produto: ")
        quantidade = tonumber(io.read())
        if codigo == 100 then
            quantidade_produto_100 = quantidade_produto_100 + quantidade
        elseif codigo == 101 then
            quantidade_produto_101 = quantidade_produto_101 + quantidade
        elseif codigo == 102 then
            quantidade_produto_102 = quantidade_produto_102 + quantidade
        elseif codigo == 103 then
            quantidade_produto_103 = quantidade_produto_103 + quantidade
        elseif codigo == 104 then
            quantidade_produto_104 = quantidade_produto_104 + quantidade
        else
            quantidade_produto_105 = quantidade_produto_105 + quantidade
        end
    else
        print("Codigo invalido!")
    end
end
print(
    "\nFechamento do pedido"
        .. "\nCodigo  -  Quantidade  -  Custo unidade  -  Custo total"
)
if quantidade_produto_100 > 0 then
    print(
        string.format("100\t-\t%d\t-  R$ 1.20\t-", quantidade_produto_100)
            .. string.format("\tR$ %.2f", quantidade_produto_100 * 1.2)
    )
    total = total + quantidade_produto_100 * 1.2
end
if quantidade_produto_101 > 0 then
    print(
        string.format("101\t-\t%d\t-  R$ 1.30\t-", quantidade_produto_101)
            .. string.format("\tR$ %.2f", quantidade_produto_101 * 1.3)
    )
    total = total + quantidade_produto_101 * 1.3
end
if quantidade_produto_102 > 0 then
    print(
        string.format("102\t-\t%d\t-  R$ 1.50\t-", quantidade_produto_102)
            .. string.format("\tR$ %.2f", quantidade_produto_102 * 1.5)
    )
    total = total + quantidade_produto_102 * 1.5
end
if quantidade_produto_103 > 0 then
    print(
        string.format("103\t-\t%d\t-  R$ 1.20\t-", quantidade_produto_103)
            .. string.format("\tR$ %.2f", quantidade_produto_103 * 1.2)
    )
    total = total + quantidade_produto_103 * 1.2
end
if quantidade_produto_104 > 0 then
    print(
        string.format("104\t-\t%d\t-  R$ 1.30\t-", quantidade_produto_104)
            .. string.format("\tR$ %.2f", quantidade_produto_104 * 1.3)
    )
    total = total + quantidade_produto_104 * 1.3
end
if quantidade_produto_105 > 0 then
    print(
        string.format("105\t-\t%d\t-  R$ 1.00\t-", quantidade_produto_105)
            .. string.format("\tR$ %.2f", quantidade_produto_105 * 1.0)
    )
    total = total + quantidade_produto_105 * 1.0
end

print(string.format("Total do pedido: R$ %.2f", total))

