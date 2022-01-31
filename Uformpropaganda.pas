unit Uformpropaganda;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, RXCtrls, Mask, DBCtrls, Placemnt;

type
  Tfpropaganda = class(TForm)
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    bgerar: TBitBtn;
    dquantidade: TEdit;
    RxLabel4: TRxLabel;
    RxLabel5: TRxLabel;
    bimprimir: TBitBtn;
    descola: TEdit;
    dmesagem: TEdit;
    dtelefone: TEdit;
    babagar: TBitBtn;
    BitBtn1: TBitBtn;
    FP: TFormPlacement;
    procedure bgerarClick(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure babagarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fpropaganda: Tfpropaganda;

implementation

uses UDM2, UEti_Propaganda;

{$R *.DFM}

procedure Tfpropaganda.bgerarClick(Sender: TObject);
var cont :integer;
begin
cont := 0;
   Repeat
    Begin
      dm2.etiqueta.Open;
      dm2.etiqueta.Insert;
      dm2.etiquetaESCOLA.Text := descola.Text;
      dm2.etiquetaMENSAGEN.Text := dmesagem.Text;
      dm2.etiquetaTELEFONE.Text := dtelefone.Text;
      dm2.etiqueta.Post;
      inc(cont);
    end;
      Until cont = StrToInt(dquantidade.Text);

end;

procedure Tfpropaganda.bimprimirClick(Sender: TObject);
begin
  Try
   dm2.etiqueta.Open; 
   Application.CreateForm(TEti_Propaganda, Eti_Propaganda);
    Eti_Propaganda.Preview;
  Finally
    Eti_Propaganda.Free;
  End;
end;

procedure Tfpropaganda.babagarClick(Sender: TObject);
begin
   dm2.etiqueta.Open;
   dm2.etiqueta.First;
   while not dm2.etiqueta.Eof do
   Begin
     dm2.etiqueta.Delete;
   end;
        dm2.etiqueta.Next;

end;

procedure Tfpropaganda.FormShow(Sender: TObject);
begin
  descola.SetFocus;
end;

end.
