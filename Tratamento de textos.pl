#!/usr/bin/perl

use strict;
use warnings;

# Função para verificar o formato do email
sub validate_email_format {
    my ($email) = @_;
    return $email =~ /\@.*\.(com|org|net|edu)$/;  # Adicionei mais domínios válidos aqui
}

# Função para verificar a complexidade da senha
sub validate_password_complexity {
    my ($password) = @_;
    return $password =~ /^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@#$%^&+=!\/?><]).*$/;
}

my $is_valid = (validate_email_format($email) && validate_password_complexity($password)) ? 1 : 0;

# Executar o programa orquestrador.rs e passar o valor booleano como argumento
system("orquestrador.rs", $is_valid);
