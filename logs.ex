defmodule LoggerModule do
  @log_file "/path/to/semreprova/app.log"

  def log(message) do
    timestamp = Timex.now() |> Timex.format!("{YYYY}-{0M}-{0D} {0h}:{0m}:{0s}")
    log_message = "#{timestamp} - #{message}\n"

    File.write!(@log_file, log_message, [:append])
    IO.puts("Log registrado: #{message}")
  end
end

defmodule MyApp do
  def start do
    LoggerModule.log("Aplicação iniciada")
    :timer.sleep(500)
    LoggerModule.log("Processamento em andamento")
    :timer.sleep(1000)
    LoggerModule.log("Aplicação finalizada")
  end
end

MyApp.start()
