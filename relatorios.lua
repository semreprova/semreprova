-- Função para ler o arquivo de logs e gerar o relatório
function generateReport(logFilePath)
    local report = "Relatório de Logs\n\n"
    
    for line in io.lines(logFilePath) do
        local timestamp, message = line:match("(%d%d/%d%d/%d%d%d%d %d%d:%d%d:%d%d) - (.+)")
        if timestamp and message then
            report = report .. timestamp .. " - " .. message .. "\n"
        end
    end
    
    return report
end

-- Caminho para o arquivo de logs
local logFilePath = "caminho/do/arquivo/de/logs.txt"

-- Gerar o relatório e exibir na saída padrão
local report = generateReport(logFilePath)
print(report)
