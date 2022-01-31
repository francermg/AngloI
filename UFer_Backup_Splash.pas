unit UFer_Backup_Splash;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RXCtrls, ExtCtrls, StdCtrls, Buttons;

type
  TFer_Backup_Splash = class(TForm)
    Notebook1: TNotebook;
    RxLabel1: TRxLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fer_Backup_Splash: TFer_Backup_Splash;

implementation

uses UDM;

{$R *.DFM}

procedure TFer_Backup_Splash.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

end.
