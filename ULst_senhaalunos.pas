unit ULst_senhaalunos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, Db, IBCustomDataSet, IBQuery;

type
  TLst_senhaalunos = class(TForm)
    Dssenhaalunos: TDataSource;
    Qsenhaalunos: TIBQuery;
    QsenhaalunosMAE_NOME: TIBStringField;
    QsenhaalunosNOME: TIBStringField;
    QsenhaalunosSENHA: TIBStringField;
    QsenhaalunosCODIGO: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Lst_senhaalunos: TLst_senhaalunos;

implementation

uses UDM;

{$R *.DFM}

end.
