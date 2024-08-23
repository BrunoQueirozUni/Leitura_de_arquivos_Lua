if os.getenv("OS") == "Windows_NT" then
    os.execute("chcp 65001 > nul")
end

local file = io.open("input.txt", "r")

if not file then
    print("Erro ao abrir o arquivo")
    return
end

local content = file:read("*all")

-- Fecha o arquivo
file:close()

local function CountWords(str)
   local _, count = str:gsub("%S+", "")
   return count
end

local wordCount = CountWords(content)

print("Quantidade de palavras no arquivo: " .. wordCount)
print("Conteudo do arquivo: \n" .. content)