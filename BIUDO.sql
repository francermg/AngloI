CREATE OR ALTER trigger notas_biud0 for notas
active before insert or update or delete position 0
AS
begin
   if (inserting) then
    insert into log(TABELA,ACAO,USUARIO,REGISTRO) values('NOTAS','INSERIR',NEW.usuario,NEW.ALUNO);
  if (updating) then
    insert into log(TABELA,ACAO,USUARIO,REGISTRO) values('NOTAS','ALTERAR',NEW.usuario,NEW.ALUNO);
  if (deleting) then
    insert into log(TABELA,ACAO,USUARIO,REGISTRO) values('NOTAS','DELETAR',OLD.usuario,OLD.ALUNO);
end

