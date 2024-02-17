-- Definição da tabela 'formulas' para armazenar as funções de conversão
local formulas = {}

-- Função para converter de Celsius para Kelvin
function formulas.CelsiusParaKelvin(valor)
    -- Formula para converção da temperatura
    local res = valor + 273.15 
    -- Retorna o resultado da conversão
    return res
end

-- Função para converter de Celsius para Fahrenheit
function formulas.CelsiusParaFahrenheit(valor)
    local res = (valor * 1.8) + 32
    return res
end

-- Função para converter de Kelvin para Celsius
function formulas.KelvinParaCelsius(valor)
    local res = valor - 273.15 
    return res
end

-- Função para converter de Kelvin para Fahrenheit
function formulas.KelvinParaFahrenheit(valor)
    local res = ((valor - 273.15) * 1.8) + 32 
    return res
end

-- Função para converter de Fahrenheit para Celsius
function formulas.FahrenheitParaCelsius(valor)
    local res = (valor - 32) / 1.8
    return res
end

-- Função para converter de Fahrenheit para Kelvin
function formulas.FahrenheitParaKelvin(valor)
    local res = ((valor - 32) * 5/9) + 273.15
    return res
end

-- Adicione mais funções de conversão aqui

-- Retorna a tabela contendo as funções de conversão
return formulas