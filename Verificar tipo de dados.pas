program VerificarTiposDados;

uses
  SysUtils;

procedure VerificarTipoDado(tabela, coluna, tipo: string);
begin
  if (tabela = 'Usuario') then
  begin
    if (coluna = 'email') and (tipo = 'VARCHAR') then
      WriteLn('Tipo válido para a coluna de email da tabela Usuario.')
    else if (coluna = 'senha') and (tipo = 'VARCHAR') then
      WriteLn('Tipo válido para a coluna de senha da tabela Usuario.')
    else
      WriteLn('Coluna ou tipo inválidos para a tabela Usuario.');
  end
  else if (tabela = 'Pessoa') then
  begin
    if (coluna = 'nome') and (tipo = 'VARCHAR') then
      WriteLn('Tipo válido para a coluna de nome da tabela Pessoa.')
    else if (coluna = 'data_nascimento') and (tipo = 'DATE') then
      WriteLn('Tipo válido para a coluna de data_nascimento da tabela Pessoa.')
    else if (coluna = 'CPF') and (tipo = 'VARCHAR') then
      WriteLn('Tipo válido para a coluna de CPF da tabela Pessoa.')
    else
      WriteLn('Coluna ou tipo inválidos para a tabela Pessoa.');
  end
  else if (tabela = 'Aluno') then
  begin
    if (coluna = 'id_aluno') and (tipo = 'INT') then
      WriteLn('Tipo válido para a coluna de id_aluno da tabela Aluno.')
    else if (coluna = 'disciplinas') and (tipo = 'VARCHAR') then
      WriteLn('Tipo válido para a coluna de disciplinas da tabela Aluno.')
    else
      WriteLn('Coluna ou tipo inválidos para a tabela Aluno.');
  end
  else if (tabela = 'Professor') then
  begin
    if (coluna = 'id_professor') and (tipo = 'INT') then
      WriteLn('Tipo válido para a coluna de id_professor da tabela Professor.')
    else if (coluna = 'formacao') and (tipo = 'VARCHAR') then
      WriteLn('Tipo válido para a coluna de formacao da tabela Professor.')
    else if (coluna = 'onde_leciona') and (tipo = 'VARCHAR') then
      WriteLn('Tipo válido para a coluna de onde_leciona da tabela Professor.')
    else if (coluna = 'disciplinas') and (tipo = 'VARCHAR') then
      WriteLn('Tipo válido para a coluna de disciplinas da tabela Professor.')
    else if (coluna = 'fk_Cursos_id_curso') and (tipo = 'INT') then
      WriteLn('Tipo válido para a coluna de fk_Cursos_id_curso da tabela Professor.')
    else if (coluna = 'fk_Disciplina_id_disciplinas') and (tipo = 'INT') then
      WriteLn('Tipo válido para a coluna de fk_Disciplina_id_disciplinas da tabela Professor.')
    else
      WriteLn('Coluna ou tipo inválidos para a tabela Professor.');
  end
  else if (tabela = 'Administrador') then
  begin
    if (coluna = 'id_administrador') and (tipo = 'INT') then
      WriteLn('Tipo válido para a coluna de id_administrador da tabela Administrador.')
    else if (coluna = 'cargo') and (tipo = 'VARCHAR') then
      WriteLn('Tipo válido para a coluna de cargo da tabela Administrador.')
    else if (coluna = 'setor') and (tipo = 'VARCHAR') then
      WriteLn('Tipo válido para a coluna de setor da tabela Administrador.')
    else if (coluna = 'privilegios') and (tipo = 'VARCHAR') then
      WriteLn('Tipo válido para a coluna de privilegios da tabela Administrador.')
    else if (coluna = 'equipe') and (tipo = 'VARCHAR') then
      WriteLn('Tipo válido para a coluna de equipe da tabela Administrador.')
    else
      WriteLn('Coluna ou tipo inválidos para a tabela Administrador.');
  end
  else if (tabela = 'Turma') then
  begin
    if (coluna = 'id_turma') and (tipo = 'INT') then
      WriteLn('Tipo válido para a coluna de id_turma da tabela Turma.')
    else if (coluna = 'fk_id_aluno_id_aluno_PK') and (tipo = 'INT') then
      WriteLn('Tipo válido para a coluna de fk_id_aluno_id_aluno_PK da tabela Turma.')
    else if (coluna = 'id_professor') and (tipo = 'INT') then
      WriteLn('Tipo válido para a coluna de id_professor da tabela Turma.')
    else if (coluna = 'tamanho_turma') and (tipo = 'INT') then
      WriteLn('Tipo válido para a coluna de tamanho_turma da tabela Turma.')
    else if (coluna = 'fk_id_alunos_id_alunos_PK') and (tipo = 'INT') then
      WriteLn('Tipo válido para a coluna de fk_id_alunos_id_alunos_PK da tabela Turma.')
    else if (coluna = 'disciplina') and (tipo = 'VARCHAR') then
      WriteLn('Tipo válido para a coluna de disciplina da tabela Turma.')
    else if (coluna = 'fk_Professor_id_professor') and (tipo = 'INT') then
      WriteLn('Tipo válido para a coluna de fk_Professor_id_professor da tabela Turma.')
    else if (coluna = 'fk_Turma_id_turma') and (tipo = 'INT') then
      WriteLn('Tipo válido para a coluna de fk_Turma_id_turma da tabela Turma.')
    else
      WriteLn('Coluna ou tipo inválidos para a tabela Turma.');
  end
  else if (tabela = 'Cursos') then
  begin
    if (coluna = 'id_curso') and (tipo = 'INT') then
      WriteLn('Tipo válido para a coluna de id_curso da tabela Cursos.')
    else if (coluna = 'nome') and (tipo = 'VARCHAR') then
      WriteLn('Tipo válido para a coluna de nome da tabela Cursos.')
    else if (coluna = 'descricao') and (tipo = 'VARCHAR') then
      WriteLn('Tipo válido para a coluna de descricao da tabela Cursos.')
    else if (coluna = 'id_professor') and (tipo = 'INT') then
      WriteLn('Tipo válido para a coluna de id_professor da tabela Cursos.')
    else if (coluna = 'nome_professor') and (tipo = 'VARCHAR') then
      WriteLn('Tipo válido para a coluna de nome_professor da tabela Cursos.')
    else
      WriteLn('Coluna ou tipo inválidos para a tabela Cursos.');
  end
  else if (tabela = 'Disciplina') then
  begin
    if (coluna = 'id_disciplinas') and (tipo = 'INT') then
      WriteLn('Tipo válido para a coluna de id_disciplinas da tabela Disciplina.')
    else if (coluna = 'fk_id_aluno_id_aluno_PK') and (tipo = 'INT') then
      WriteLn('Tipo válido para a coluna de fk_id_aluno_id_aluno_PK da tabela Disciplina.')
    else if (coluna = 'id_professor') and (tipo = 'INT') then
      WriteLn('Tipo válido para a coluna de id_professor da tabela Disciplina.')
    else if (coluna = 'id_cursos') and (tipo = 'INT') then
      WriteLn('Tipo válido para a coluna de id_cursos da tabela Disciplina.')
    else if (coluna = 'nome_aluno') and (tipo = 'VARCHAR') then
      WriteLn('Tipo válido para a coluna de nome_aluno da tabela Disciplina.')
    else if (coluna = 'fk_notas_notas_PK') and (tipo = 'INT') then
      WriteLn('Tipo válido para a coluna de fk_notas_notas_PK da tabela Disciplina.')
    else if (coluna = 'descricao_disciplinas') and (tipo = 'VARCHAR') then
      WriteLn('Tipo válido para a coluna de descricao_disciplinas da tabela Disciplina.')
    else
      WriteLn('Coluna ou tipo inválidos para a tabela Disciplina.');
  end
  else if (tabela = 'Carrinho') then
  begin
	  if (coluna = 'id_carrinho') and (tipo = 'INT') then
	    WriteLn('Tipo válido para a coluna de id_carrinho da tabela Carrinho.')
	  else if (coluna = 'id_aluno') and (tipo = 'INT') then
	    WriteLn('Tipo válido para a coluna de id_aluno da tabela Carrinho.')
	  else if (coluna = 'id_curso') and (tipo = 'INT') then
	    WriteLn('Tipo válido para a coluna de id_curso da tabela Carrinho.')
	  else if (coluna = 'quantidade') and (tipo = 'INT') then
	    WriteLn('Tipo válido para a coluna de quantidade da tabela Carrinho.')
	  else if (coluna = 'valor_compra') and (tipo = 'INT') then
	    WriteLn('Tipo válido para a coluna de valor_compra da tabela Carrinho.')
	  else
	    WriteLn('Coluna ou tipo inválidos para a tabela Carrinho.');
  end
  else if (tabela = 'Compra') then
  begin
	  if (coluna = 'id_compra') and (tipo = 'INT') then
	    WriteLn('Tipo válido para a coluna de id_compra da tabela Compra.')
	  else if (coluna = 'id_aluno') and (tipo = 'INT') then
	    WriteLn('Tipo válido para a coluna de id_aluno da tabela Compra.')
	  else if (coluna = 'id_curso') and (tipo = 'INT') then
	    WriteLn('Tipo válido para a coluna de id_curso da tabela Compra.')
	  else if (coluna = 'descricao_curso') and (tipo = 'VARCHAR') then
	    WriteLn('Tipo válido para a coluna de descricao_curso da tabela Compra.')
	  else
	    WriteLn('Coluna ou tipo inválidos para a tabela Compra.');
  end
  else
  begin
    WriteLn('Tabela inválida.');
  end;
end;

begin
	VerificarTipoDado('Usuario', 'email', 'VARCHAR');
  VerificarTipoDado('Usuario', 'senha', 'VARCHAR');
  
  VerificarTipoDado('Pessoa', 'nome', 'VARCHAR');
  VerificarTipoDado('Pessoa', 'data_nascimento', 'DATE');
  VerificarTipoDado('Pessoa', 'CPF', 'VARCHAR');
  
  VerificarTipoDado('Aluno', 'id_aluno', 'INT');
  VerificarTipoDado('Aluno', 'disciplinas', 'VARCHAR');
  
  VerificarTipoDado('Professor', 'id_professor', 'INT');
  VerificarTipoDado('Professor', 'formacao', 'VARCHAR');
  VerificarTipoDado('Professor', 'onde_leciona', 'VARCHAR');
  VerificarTipoDado('Professor', 'disciplinas', 'VARCHAR');
  VerificarTipoDado('Professor', 'fk_Cursos_id_curso', 'INT');
  VerificarTipoDado('Professor', 'fk_Disciplina_id_disciplinas', 'INT');
  
  VerificarTipoDado('Administrador', 'id_administrador', 'INT');
	VerificarTipoDado('Administrador', 'cargo', 'VARCHAR');
	VerificarTipoDado('Administrador', 'setor', 'VARCHAR');
	VerificarTipoDado('Administrador', 'privilegios', 'VARCHAR');
	VerificarTipoDado('Administrador', 'equipe', 'VARCHAR');
	
	VerificarTipoDado('Turma', 'id_turma', 'INT');
	VerificarTipoDado('Turma', 'fk_id_aluno_id_aluno_PK', 'INT');
	VerificarTipoDado('Turma', 'id_professor', 'INT');
	VerificarTipoDado('Turma', 'tamanho_turma', 'INT');
	VerificarTipoDado('Turma', 'fk_id_alunos_id_alunos_PK', 'INT');
	VerificarTipoDado('Turma', 'disciplina', 'VARCHAR');
	VerificarTipoDado('Turma', 'fk_Professor_id_professor', 'INT');
	VerificarTipoDado('Turma', 'fk_Turma_id_turma', 'INT');
	
	VerificarTipoDado('Cursos', 'id_curso', 'INT');
	VerificarTipoDado('Cursos', 'nome', 'VARCHAR');
	VerificarTipoDado('Cursos', 'descricao', 'VARCHAR');
	VerificarTipoDado('Cursos', 'id_professor', 'INT');
	VerificarTipoDado('Cursos', 'nome_professor', 'VARCHAR');
	
	VerificarTipoDado('Disciplina', 'id_disciplinas', 'INT');
	VerificarTipoDado('Disciplina', 'fk_id_aluno_id_aluno_PK', 'INT');
	VerificarTipoDado('Disciplina', 'id_professor', 'INT');
	VerificarTipoDado('Disciplina', 'id_cursos', 'INT');
	VerificarTipoDado('Disciplina', 'nome_aluno', 'VARCHAR');
	VerificarTipoDado('Disciplina', 'fk_notas_notas_PK', 'INT');
	VerificarTipoDado('Disciplina', 'descricao_disciplinas', 'VARCHAR');
	
	VerificarTipoDado('Carrinho', 'id_carrinho', 'INT');
	VerificarTipoDado('Carrinho', 'id_aluno', 'INT');
	VerificarTipoDado('Carrinho', 'id_curso', 'INT');
	VerificarTipoDado('Carrinho', 'quantidade', 'INT');
	VerificarTipoDado('Carrinho', 'valor_compra', 'INT');
	
	VerificarTipoDado('Compra', 'id_compra', 'INT');
	VerificarTipoDado('Compra', 'id_aluno', 'INT');
	VerificarTipoDado('Compra', 'id_curso', 'INT');
	VerificarTipoDado('Compra', 'descricao_curso', 'VARCHAR');

end.
