unit ULst_LoginSenhaAluno;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, Db, IBCustomDataSet, IBQuery;

type
  TLst_LoginSenhaAluno = class(TForm)
    RL_LoginSenhaAluno: TRLReport;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    DsLoginSenha: TDataSource;
    QLoginSenha: TIBQuery;
    QLoginSenhaNOME: TIBStringField;
    QLoginSenhaLOGIN: TIntegerField;
    QLoginSenhaSENHA: TIBStringField;
    QLoginSenhaSERIE: TIBStringField;
    RLDBText4: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Lst_LoginSenhaAluno: TLst_LoginSenhaAluno;

implementation

uses UDM;

{$R *.DFM}

end.
