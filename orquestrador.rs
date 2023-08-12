use std::process::Command;
use std::time::Duration;
use chrono::prelude::*;

fn main() {
    // Iniciar o script de logs (deve ser executado apenas uma vez)
    start_log_script();

    // Verificar se um novo usuário foi cadastrado
    let new_user_registered = true; // Substitua pela lógica real de verificação
    if new_user_registered {
        let user_email = "example@example.com"; // Substitua pelo email do novo usuário
        let user_password = "Password123"; // Substitua pela senha do novo usuário
        let validation_result = run_validation_script(user_email, user_password);
        // Faça algo com o resultado da validação
    }

    // Executar o script de verificação dos tipos de dados em Pascal
    run_data_validation_script();

    // Exemplo de acionamento do script de restauração de backup
    // trigger_backup_restoration();

    // Executar o script de manutenção da plataforma (agendado para todos os dias às 3h)
    let now = Local::now();
    if now.hour() == 3 && now.minute() == 0 {
        run_maintenance_script();
    }

    // Exemplo de formatação de logs em relatório (agendado para todos os domingos)
    if now.weekday() == Weekday::Sun {
        format_logs_to_report();
    }
    
    // Exemplo de execução do script de backup diário (agendado para meia-noite)
    if now.hour() == 0 && now.minute() == 0 {
        run_backup_script();
    }
}

fn start_log_script() {
    println!("Iniciando script de logs...");
    Command::new("perl")
        .arg("log_script.pl")
        .spawn()
        .expect("Falha ao iniciar o script de logs.");
}

fn run_validation_script(email: &str, password: &str) -> String {
    println!("Executando script de validação de formato em Perl...");
    let output = Command::new("perl")
        .args(&["validation_script.pl", email, password])
        .output()
        .expect("Falha ao executar o script de validação de formato.");
    
    String::from_utf8_lossy(&output.stdout).trim().to_string()
}

fn run_data_validation_script() {
    println!("Executando script de verificação dos tipos de dados em Pascal...");
    Command::new("VerificarTiposDados.exe")
        .spawn()
        .expect("Falha ao executar o script de verificação dos tipos de dados em Pascal.");
}

fn run_maintenance_script() {
    println!("Executando script de manutenção da plataforma...");
    Command::new("MaintenanceScript.exe")
        .spawn()
        .expect("Falha ao executar o script de manutenção da plataforma.");
}

fn format_logs_to_report() {
    println!("Formatando logs em um relatório...");
    Command::new("lua")
        .arg("FormatLogsScript.lua")
        .spawn()
        .expect("Falha ao formatar os logs em um relatório.");
}

fn run_backup_script() {
    println!("Executando script de criação de backup...");
    
    // Comando para executar o programa de backup
    let status = Command::new("backup.exe")
        .status()
        .expect("Falha ao executar o script de backup");
    
    if status.success() {
        println!("Script de criação de backup concluído com sucesso.");
    } else {
        println!("Falha ao executar o script de criação de backup.");
    }
}
