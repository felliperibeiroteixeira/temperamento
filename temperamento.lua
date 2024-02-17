-- Obtem o diretório do roteiro Lua atual
local diretorio = debug.getinfo(1, 'S').source:match("@?(.*/)")

-- Verifica se o diretório foi obtido com sucesso
if diretorio then
	-- Adiciona o diretório ao package.path
    package.path = package.path .. ";" .. diretorio .. "?.lua"
end

-- Carrega o módulo que contem as formulas
local formulas = require("formulas")

-- laço principal
while true do
	-- Menu de opçõe
	print("TEMPERAMENTO - Conversão de Temperatura")
	print("") -- Adciona espaço entre linhas
	print("Opções:")
	print("")
	print("1. Celsius para Kelvin")
	print("2. Celsius para Fahrenheit")
	print("3. Kelvin para Celsius")
	print("4. Kelvin para Fahrenheit")
	print("5. Fahrenheit para Celsius")
	print("6. Fahrenheit para Kelvin")	
	
	-- Adicione mais opções aqui
	print("")
	
	-- Solicitar ao usuário a escolha da opção
	local opcao = io.read("*n")

	-- Executar a ação correspondente à opção escolhida
	if opcao == 1 then
		print("Insira o valor da temperatura em Celsius:")
		-- Solicitar ao usuário o valor da temperatura
		local valor = io.read("*n")
		-- Chama a função de converção no modulo formulas
		res = formulas.CelsiusParaKelvin(valor)
		print("")
		-- Imprimir o resultado da conversão
		print(res .. " Kelvin.")
		print("")
	elseif opcao == 2 then
		print("Insira o valor da temperatura em Celsius:")
		local valor = io.read("*n")
		res = formulas.CelsiusParaFahrenheit(valor)
		print("")
		print(res .. " Fahrenheit.")
		print("")
	elseif opcao == 3 then
		print("Insira o valor da temperatura em Kelvin:")
		local valor = io.read("*n")
		res = formulas.KelvinParaCelsius(valor)
		print("")
		print(res .. " Celsius.")
		print("")
	elseif opcao == 4 then
		print("Insira o valor da temperatura em Kelvin:")
		local valor = io.read("*n")
		res = formulas.KelvinParaFahrenheit(valor)
		print("")
		print(res .. " Fahrenheit.")
		print("")
	elseif opcao == 5 then
		print("Insira o valor da temperatura em Fahrenheit:")
		local valor = io.read("*n")
		res = formulas.FahrenheitParaCelsius(valor)
		print("")
		print(res .. " Celsius.")
		print("")
	elseif opcao == 6 then
		print("Insira o valor da temperatura em Fahrenheit:")
		local valor = io.read("*n")
		res = formulas.FahrenheitParaKelvin(valor)
		print("")
		print(res .. " Kelvin.")
		print("")	
	-- Adicione mais casos aqui

	else
		print("Opção inválida!")
		print("")
	end
end