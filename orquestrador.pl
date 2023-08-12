#!/usr/bin/perl

use strict;
use warnings;

# Função para iniciar o script de logs
sub startLogScript {
    print "Iniciando script de logs...\n";
    system("perl log_script.pl &");
}

# Função para executar o script de validação de formato em Perl
sub runValidationScript {
    my ($email, $password) = @_;
    my $valid = `perl validation_script.pl $email $password`;
    return $valid;
}

# Função para executar o script de verificação dos tipos de dados em Pascal
sub runDataValidationScript {
    my ($table, $column, $data) = @_;
    print "Executando script de verificação dos tipos de dados em Pascal...\n";
    system("VerificarTiposDados.exe $table $column $data");
}

# Função para acionar o script de restauração de backup
sub triggerBackupRestoration {
    print "Acionando script de restauração de backup...\n";
    system("RestoreBackupScript.exe");
}

# Função para executar o script de criação de backup
sub runBackupScript {
    print "Executando script de criação de backup...\n";
    system("CriarBackupScript.exe");
}

# Função para executar o script de manutenção da plataforma
sub runMaintenanceScript {
    print "Executando script de manutenção da plataforma...\n";
    system("MaintenanceScript.exe");
}

# Função para formatar os logs em um relatório
sub formatLogsToReport {
    print "Formatando logs em um relatório...\n";
    system("lua FormatLogsScript.lua");
}

# Iniciar o script de logs (deve ser executado apenas uma vez)
startLogScript();

# Verificar se um novo usuário foi cadastrado
my $new_user_registered = 1;  # Substitua pela lógica real de verificação
if ($new_user_registered) {
    my $user_email = "example@example.com";  # Substitua pelo email do novo usuário
    my $user_password = "Password123";  # Substitua pela senha do novo usuário
    my $validation_result = runValidationScript($user_email, $user_password);
}

# Exemplo de execução do script de verificação dos tipos de dados em Pascal
my $table = "tabela_exemplo";
my $column = "coluna_exemplo";
my $data = "dado_exemplo";
runDataValidationScript($table, $column, $data);

# Exemplo de acionamento do script de restauração de backup
# if ($valor_do_outro_software eq "true") {
#     triggerBackupRestoration();
# }

# Executar o script de criação de backup (todos os dias à meia-noite)
my ($sec, $min, $hour) = localtime();
if ($hour == 0 && $min == 0) {
    runBackupScript();
}

# Executar o script de manutenção da plataforma (todos os dias às 3h)
if ($hour == 3 && $min == 0) {
    runMaintenanceScript();
}

# Exemplo de formatação de logs em relatório (todos os domingos às 6h)
my ($wday, $whour) = (localtime())[6, 2];
if ($wday == 0 && $whour == 6) {
    formatLogsToReport();
}
