unit ULst_BolsaMQR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, IBCustomDataSet,
  IBQuery, Placemnt, QrAngLbl, TeEngine, Series, TeeProcs, Chart, DBChart,
  QrTee;

type
  TLst_BolsaMQR = class(TQuickRep)
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRSysData2: TQRSysData;
    QRLabel2: TQRLabel;
    Titulo: TQRLabel;
    QRSysData1: TQRSysData;
    QRImage1: TQRImage;
    DetNota: TQRBand;
    QRShape6: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape15: TQRShape;
    QRShape27: TQRShape;
    QRShape39: TQRShape;
    QRLabel3: TQRLabel;
    QRShape2: TQRShape;
    QRShape4: TQRShape;
    QRShape12: TQRShape;
    Ano: TQRLabel;
    QBolsap1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QBolsap2: TQRLabel;
    QBolsap3: TQRLabel;
    QBolsap4: TQRLabel;
    QBolsap5: TQRLabel;
    QBolsap6: TQRLabel;
    QBolsap12: TQRLabel;
    QBolsap13: TQRLabel;
    QBolsap14: TQRLabel;
    QBolsap15: TQRLabel;
    QBolsap16: TQRLabel;
    QBolsap17: TQRLabel;
    QBolsap18: TQRLabel;
    QBolsap19: TQRLabel;
    QBolsap20: TQRLabel;
    QBolsap21: TQRLabel;
    QBolsap22: TQRLabel;
    QBolsap23: TQRLabel;
    QBolsap24: TQRLabel;
    QBolsap25: TQRLabel;
    QBolsap26: TQRLabel;
    QBolsap27: TQRLabel;
    QBolsap28: TQRLabel;
    QBolsap29: TQRLabel;
    QBolsap30: TQRLabel;
    QBolsap31: TQRLabel;
    QBolsap32: TQRLabel;
    QBolsap33: TQRLabel;
    QBolsap34: TQRLabel;
    QBolsap35: TQRLabel;
    QBolsap36: TQRLabel;
    QBolsap37: TQRLabel;
    QBolsap38: TQRLabel;
    QBolsap39: TQRLabel;
    QBolsap40: TQRLabel;
    QBolsap50: TQRLabel;
    QBolsap49: TQRLabel;
    QBolsap48: TQRLabel;
    QBolsap47: TQRLabel;
    QBolsap46: TQRLabel;
    QBolsap45: TQRLabel;
    QBolsap44: TQRLabel;
    QBolsap43: TQRLabel;
    QBolsap42: TQRLabel;
    QBolsap41: TQRLabel;
    QBolsap52: TQRLabel;
    QBolsap53: TQRLabel;
    QBolsap54: TQRLabel;
    QBolsap55: TQRLabel;
    QBolsap56: TQRLabel;
    QBolsap57: TQRLabel;
    QBolsap58: TQRLabel;
    QBolsap59: TQRLabel;
    QBolsap60: TQRLabel;
    QBolsap61: TQRLabel;
    QBolsap62: TQRLabel;
    QBolsap63: TQRLabel;
    QBolsap64: TQRLabel;
    QBolsap65: TQRLabel;
    QBolsap66: TQRLabel;
    QBolsap67: TQRLabel;
    QBolsap68: TQRLabel;
    QBolsap69: TQRLabel;
    QBolsap70: TQRLabel;
    QBolsap71: TQRLabel;
    QBolsap72: TQRLabel;
    QBolsap73: TQRLabel;
    QBolsap74: TQRLabel;
    QBolsap75: TQRLabel;
    QBolsap76: TQRLabel;
    QBolsap77: TQRLabel;
    QBolsap78: TQRLabel;
    QBolsap79: TQRLabel;
    QBolsap80: TQRLabel;
    QBolsap81: TQRLabel;
    QBolsap82: TQRLabel;
    QBolsap83: TQRLabel;
    QBolsap84: TQRLabel;
    QBolsap85: TQRLabel;
    QBolsap86: TQRLabel;
    QBolsap87: TQRLabel;
    QBolsap88: TQRLabel;
    QBolsap89: TQRLabel;
    QBolsap90: TQRLabel;
    QBolsap91: TQRLabel;
    QBolsap100: TQRLabel;
    QBolsap99: TQRLabel;
    QBolsap98: TQRLabel;
    QBolsap97: TQRLabel;
    QBolsap96: TQRLabel;
    QBolsap95: TQRLabel;
    QBolsap94: TQRLabel;
    QBolsap93: TQRLabel;
    QBolsap92: TQRLabel;
    QBolsaS0: TQRLabel;
    QBolsaS1: TQRLabel;
    QBolsaS2: TQRLabel;
    QBolsaS3: TQRLabel;
    QBolsaS4: TQRLabel;
    QBolsaS5: TQRLabel;
    QBolsaS6: TQRLabel;
    QBolsaS7: TQRLabel;
    QBolsaS8: TQRLabel;
    QBolsaS9: TQRLabel;
    QBolsaS10: TQRLabel;
    QBolsaS11: TQRLabel;
    QBolsaS12: TQRLabel;
    QBolsaS13: TQRLabel;
    QBolsaS14: TQRLabel;
    QBolsaS15: TQRLabel;
    QBolsaS16: TQRLabel;
    QBolsaS17: TQRLabel;
    QBolsaS18: TQRLabel;
    QBolsaS19: TQRLabel;
    QBolsaS20: TQRLabel;
    QBolsaS21: TQRLabel;
    QBolsaS22: TQRLabel;
    QBolsaS23: TQRLabel;
    QBolsaS24: TQRLabel;
    QBolsaS25: TQRLabel;
    QBolsaS26: TQRLabel;
    QBolsaS27: TQRLabel;
    QBolsaS28: TQRLabel;
    QBolsaS29: TQRLabel;
    QBolsaS30: TQRLabel;
    QBolsaS31: TQRLabel;
    QBolsaS32: TQRLabel;
    QBolsaS33: TQRLabel;
    QBolsaS34: TQRLabel;
    QBolsaS35: TQRLabel;
    QBolsaS36: TQRLabel;
    QBolsaS37: TQRLabel;
    QBolsaS38: TQRLabel;
    QBolsaS39: TQRLabel;
    QBolsaS49: TQRLabel;
    QBolsaS48: TQRLabel;
    QBolsaS47: TQRLabel;
    QBolsaS46: TQRLabel;
    QBolsaS45: TQRLabel;
    QBolsaS44: TQRLabel;
    QBolsaS43: TQRLabel;
    QBolsaS42: TQRLabel;
    QBolsaS41: TQRLabel;
    QBolsaS40: TQRLabel;
    QBolsaS51: TQRLabel;
    QBolsaS52: TQRLabel;
    QBolsaS53: TQRLabel;
    QBolsaS54: TQRLabel;
    QBolsaS55: TQRLabel;
    QBolsaS56: TQRLabel;
    QBolsaS57: TQRLabel;
    QBolsaS58: TQRLabel;
    QBolsaS59: TQRLabel;
    QBolsaS60: TQRLabel;
    QBolsaS61: TQRLabel;
    QBolsaS62: TQRLabel;
    QBolsaS63: TQRLabel;
    QBolsaS64: TQRLabel;
    QBolsaS65: TQRLabel;
    QBolsaS66: TQRLabel;
    QBolsaS67: TQRLabel;
    QBolsaS68: TQRLabel;
    QBolsaS69: TQRLabel;
    QBolsaS70: TQRLabel;
    QBolsaS71: TQRLabel;
    QBolsaS72: TQRLabel;
    QBolsaS73: TQRLabel;
    QBolsaS74: TQRLabel;
    QBolsaS75: TQRLabel;
    QBolsaS76: TQRLabel;
    QBolsaS77: TQRLabel;
    QBolsaS78: TQRLabel;
    QBolsaS79: TQRLabel;
    QBolsaS80: TQRLabel;
    QBolsaS81: TQRLabel;
    QBolsaS82: TQRLabel;
    QBolsaS83: TQRLabel;
    QBolsaS84: TQRLabel;
    QBolsaS85: TQRLabel;
    QBolsaS86: TQRLabel;
    QBolsaS87: TQRLabel;
    QBolsaS88: TQRLabel;
    QBolsaS89: TQRLabel;
    QBolsaS90: TQRLabel;
    QBolsaS100: TQRLabel;
    QBolsaS99: TQRLabel;
    QBolsaS98: TQRLabel;
    QBolsaS97: TQRLabel;
    QBolsaS96: TQRLabel;
    QBolsaS95: TQRLabel;
    QBolsaS94: TQRLabel;
    QBolsaS93: TQRLabel;
    QBolsaS92: TQRLabel;
    QBolsaS91: TQRLabel;
    QBolsaT1: TQRLabel;
    QBolsaT2: TQRLabel;
    QBolsaT3: TQRLabel;
    QBolsaT4: TQRLabel;
    QBolsaT5: TQRLabel;
    QBolsaT6: TQRLabel;
    QBolsaT7: TQRLabel;
    QBolsaT8: TQRLabel;
    QBolsaT9: TQRLabel;
    QBolsaT10: TQRLabel;
    QBolsaT11: TQRLabel;
    QBolsaT12: TQRLabel;
    QBolsaT13: TQRLabel;
    QBolsaT14: TQRLabel;
    QBolsaT15: TQRLabel;
    QBolsaT16: TQRLabel;
    QBolsaT17: TQRLabel;
    QBolsaT18: TQRLabel;
    QBolsaT19: TQRLabel;
    QBolsaT20: TQRLabel;
    QBolsaT21: TQRLabel;
    QBolsaT22: TQRLabel;
    QBolsaT23: TQRLabel;
    QBolsaT24: TQRLabel;
    QBolsaT25: TQRLabel;
    QBolsaT26: TQRLabel;
    QBolsaT27: TQRLabel;
    QBolsaT28: TQRLabel;
    QBolsaT29: TQRLabel;
    QBolsaT30: TQRLabel;
    QBolsaT31: TQRLabel;
    QBolsaT32: TQRLabel;
    QBolsaT33: TQRLabel;
    QBolsaT34: TQRLabel;
    QBolsaT35: TQRLabel;
    QBolsaT36: TQRLabel;
    QBolsaT37: TQRLabel;
    QBolsaT38: TQRLabel;
    QBolsaT39: TQRLabel;
    QBolsaT40: TQRLabel;
    QBolsaT50: TQRLabel;
    QBolsaT49: TQRLabel;
    QBolsaT48: TQRLabel;
    QBolsaT47: TQRLabel;
    QBolsaT46: TQRLabel;
    QBolsaT45: TQRLabel;
    QBolsaT44: TQRLabel;
    QBolsaT43: TQRLabel;
    QBolsaT42: TQRLabel;
    QBolsaT41: TQRLabel;
    QBolsaT51: TQRLabel;
    QBolsaT52: TQRLabel;
    QBolsaT53: TQRLabel;
    QBolsaT54: TQRLabel;
    QBolsaT55: TQRLabel;
    QBolsaT56: TQRLabel;
    QBolsaT57: TQRLabel;
    QBolsaT58: TQRLabel;
    QBolsaT59: TQRLabel;
    QBolsaT60: TQRLabel;
    QBolsaT61: TQRLabel;
    QBolsaT62: TQRLabel;
    QBolsaT63: TQRLabel;
    QBolsaT64: TQRLabel;
    QBolsaT65: TQRLabel;
    QBolsaT66: TQRLabel;
    QBolsaT67: TQRLabel;
    QBolsaT68: TQRLabel;
    QBolsaT69: TQRLabel;
    QBolsaT70: TQRLabel;
    QBolsaT71: TQRLabel;
    QBolsaT72: TQRLabel;
    QBolsaT73: TQRLabel;
    QBolsaT74: TQRLabel;
    QBolsaT75: TQRLabel;
    QBolsaT76: TQRLabel;
    QBolsaT77: TQRLabel;
    QBolsaT78: TQRLabel;
    QBolsaT79: TQRLabel;
    QBolsaT80: TQRLabel;
    QBolsaT81: TQRLabel;
    QBolsaT82: TQRLabel;
    QBolsaT83: TQRLabel;
    QBolsaT84: TQRLabel;
    QBolsaT85: TQRLabel;
    QBolsaT86: TQRLabel;
    QBolsaT87: TQRLabel;
    QBolsaT88: TQRLabel;
    QBolsaT89: TQRLabel;
    QBolsaT90: TQRLabel;
    QBolsaT100: TQRLabel;
    QBolsaT99: TQRLabel;
    QBolsaT98: TQRLabel;
    QBolsaT97: TQRLabel;
    QBolsaT96: TQRLabel;
    QBolsaT95: TQRLabel;
    QBolsaT94: TQRLabel;
    QBolsaT93: TQRLabel;
    QBolsaT92: TQRLabel;
    QBolsaT91: TQRLabel;
    QBolsap7: TQRLabel;
    QBolsap8: TQRLabel;
    QBolsap9: TQRLabel;
    QBolsap10: TQRLabel;
    QBolsap11: TQRLabel;
    QBolsap0: TQRLabel;
    QBolsap51: TQRLabel;
    QBolsaS50: TQRLabel;
    QBolsaT0: TQRLabel;
    QRLabel8: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRExpr2: TQRExpr;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRLabel10: TQRLabel;
    QRExpr3: TQRExpr;
    QRShape7: TQRShape;
    QRLabel11: TQRLabel;
    QRExpr4: TQRExpr;
    QRShape11: TQRShape;
    Periodo: TQRLabel;
    procedure DetNotaBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  Lst_BolsaMQR: TLst_BolsaMQR;

implementation

uses UDM, UMenu, ULst_Alunos, UDM2, UBolsas;

{$R *.DFM}

procedure TLst_BolsaMQR.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  Ano.Caption := Principal.Ano.Caption;
  if Bolsas.Senha.Text = DM.ParametrosTAXA.Value then
     begin
      Lst_BolsaMQR.TitleBand1.Enabled := True;
      Lst_BolsaMQR.DetNota.Enabled := True;
     end;
end;

procedure TLst_BolsaMQR.DetNotaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   if (DM2.BolsaMCONTP0.Value <> 0) then QBolsap0.Caption := '0% - '+DM2.BolsaMCONTP0.Text+'-Alunos' else
       QBolsap0.Caption := '****';
   if (DM2.BolsaMCONTP1.Value <> 0) then QBolsap1.Caption := '1% - '+DM2.BolsaMCONTP1.Text+'-Alunos' else
       QBolsap1.Caption := '****';
   if (DM2.BolsaMCONTP2.Value <> 0) then QBolsap2.Caption := '2% - '+DM2.BolsaMCONTP2.Text+'-Alunos' else
       QBolsap2.Caption := '****';
   if (DM2.BolsaMCONTP3.Value <> 0) then QBolsap3.Caption := '3% - '+DM2.BolsaMCONTP3.Text+'-Alunos' else
       QBolsap3.Caption := '****';
   if (DM2.BolsaMCONTP4.Value <> 0) then QBolsap4.Caption := '4% - '+DM2.BolsaMCONTP4.Text+'-Alunos' else
       QBolsap4.Caption := '****';
   if (DM2.BolsaMCONTP5.Value <> 0) then QBolsap5.Caption := '5% - '+DM2.BolsaMCONTP5.Text+'-Alunos' else
       QBolsap5.Caption := '****';
   if (DM2.BolsaMCONTP6.Value <> 0) then QBolsap6.Caption := '6% - '+DM2.BolsaMCONTP6.Text+'-Alunos' else
       QBolsap6.Caption := '****';
   if (DM2.BolsaMCONTP7.Value <> 0) then QBolsap7.Caption := '7% - '+DM2.BolsaMCONTP7.Text+'-Alunos' else
       QBolsap7.Caption := '****';
   if (DM2.BolsaMCONTP8.Value <> 0) then QBolsap8.Caption := '8% - '+DM2.BolsaMCONTP8.Text+'-Alunos' else
       QBolsap8.Caption := '****';
   if (DM2.BolsaMCONTP9.Value <> 0) then QBolsap9.Caption := '9% - '+DM2.BolsaMCONTP9.Text+'-Alunos' else
       QBolsap9.Caption := '****';
   if (DM2.BolsaMCONTP10.Value <> 0) then QBolsap10.Caption := '10% - '+DM2.BolsaMCONTP10.Text+'-Alunos' else
       QBolsap10.Caption := '****';
   if (DM2.BolsaMCONTP11.Value <> 0) then QBolsap11.Caption := '11% - '+DM2.BolsaMCONTP11.Text+'-Alunos' else
       QBolsap11.Caption := '****';
   if (DM2.BolsaMCONTP12.Value <> 0) then QBolsap12.Caption := '12% - '+DM2.BolsaMCONTP12.Text+'-Alunos' else
       QBolsap12.Caption := '****';
   if (DM2.BolsaMCONTP13.Value <> 0) then QBolsap13.Caption := '13% - '+DM2.BolsaMCONTP13.Text+'-Alunos' else
       QBolsap13.Caption := '****';
   if (DM2.BolsaMCONTP14.Value <> 0) then QBolsap14.Caption := '14% - '+DM2.BolsaMCONTP14.Text+'-Alunos' else
       QBolsap14.Caption := '****';
   if (DM2.BolsaMCONTP15.Value <> 0) then QBolsap15.Caption := '15% - '+DM2.BolsaMCONTP15.Text+'-Alunos' else
       QBolsap15.Caption := '****';
   if (DM2.BolsaMCONTP16.Value <> 0) then QBolsap16.Caption := '16% - '+DM2.BolsaMCONTP16.Text+'-Alunos' else
       QBolsap16.Caption := '****';
   if (DM2.BolsaMCONTP17.Value <> 0) then QBolsap17.Caption := '17% - '+DM2.BolsaMCONTP17.Text+'-Alunos' else
       QBolsap17.Caption := '****';
   if (DM2.BolsaMCONTP18.Value <> 0) then QBolsap18.Caption := '18% - '+DM2.BolsaMCONTP18.Text+'-Alunos' else
       QBolsap18.Caption := '****';
   if (DM2.BolsaMCONTP19.Value <> 0) then QBolsap19.Caption := '19% - '+DM2.BolsaMCONTP19.Text+'-Alunos' else
       QBolsap19.Caption := '****';
   if (DM2.BolsaMCONTP20.Value <> 0) then QBolsap20.Caption := '20% - '+DM2.BolsaMCONTP20.Text+'-Alunos' else
       QBolsap20.Caption := '****';
   if (DM2.BolsaMCONTP21.Value <> 0) then QBolsap21.Caption := '21% - '+DM2.BolsaMCONTP21.Text+'-Alunos' else
       QBolsap21.Caption := '****';
   if (DM2.BolsaMCONTP22.Value <> 0) then QBolsap22.Caption := '22% - '+DM2.BolsaMCONTP22.Text+'-Alunos' else
       QBolsap22.Caption := '****';
   if (DM2.BolsaMCONTP23.Value <> 0) then QBolsap23.Caption := '23% - '+DM2.BolsaMCONTP23.Text+'-Alunos' else
       QBolsap23.Caption := '****';
   if (DM2.BolsaMCONTP24.Value <> 0) then QBolsap24.Caption := '24% - '+DM2.BolsaMCONTP24.Text+'-Alunos' else
       QBolsap24.Caption := '****';
   if (DM2.BolsaMCONTP25.Value <> 0) then QBolsap25.Caption := '25% - '+DM2.BolsaMCONTP25.Text+'-Alunos' else
       QBolsap25.Caption := '****';
   if (DM2.BolsaMCONTP26.Value <> 0) then QBolsap26.Caption := '26% - '+DM2.BolsaMCONTP26.Text+'-Alunos' else
       QBolsap26.Caption := '****';
   if (DM2.BolsaMCONTP27.Value <> 0) then QBolsap27.Caption := '27% - '+DM2.BolsaMCONTP27.Text+'-Alunos' else
       QBolsap27.Caption := '****';
   if (DM2.BolsaMCONTP28.Value <> 0) then QBolsap28.Caption := '28% - '+DM2.BolsaMCONTP28.Text+'-Alunos' else
       QBolsap28.Caption := '****';
   if (DM2.BolsaMCONTP29.Value <> 0) then QBolsap29.Caption := '29% - '+DM2.BolsaMCONTP29.Text+'-Alunos' else
       QBolsap29.Caption := '****';
   if (DM2.BolsaMCONTP30.Value <> 0) then QBolsap30.Caption := '30% - '+DM2.BolsaMCONTP30.Text+'-Alunos' else
       QBolsap30.Caption := '****';
   if (DM2.BolsaMCONTP31.Value <> 0) then QBolsap31.Caption := '31% - '+DM2.BolsaMCONTP31.Text+'-Alunos' else
       QBolsap31.Caption := '****';
   if (DM2.BolsaMCONTP32.Value <> 0) then QBolsap32.Caption := '32% - '+DM2.BolsaMCONTP32.Text+'-Alunos' else
       QBolsap32.Caption := '****';
   if (DM2.BolsaMCONTP33.Value <> 0) then QBolsap33.Caption := '33% - '+DM2.BolsaMCONTP33.Text+'-Alunos' else
       QBolsap33.Caption := '****';
   if (DM2.BolsaMCONTP34.Value <> 0) then QBolsap34.Caption := '34% - '+DM2.BolsaMCONTP34.Text+'-Alunos' else
       QBolsap34.Caption := '****';
   if (DM2.BolsaMCONTP35.Value <> 0) then QBolsap35.Caption := '35% - '+DM2.BolsaMCONTP35.Text+'-Alunos' else
       QBolsap35.Caption := '****';
   if (DM2.BolsaMCONTP36.Value <> 0) then QBolsap36.Caption := '36% - '+DM2.BolsaMCONTP36.Text+'-Alunos' else
       QBolsap36.Caption := '****';
   if (DM2.BolsaMCONTP37.Value <> 0) then QBolsap37.Caption := '37% - '+DM2.BolsaMCONTP37.Text+'-Alunos' else
       QBolsap37.Caption := '****';
   if (DM2.BolsaMCONTP38.Value <> 0) then QBolsap38.Caption := '38% - '+DM2.BolsaMCONTP38.Text+'-Alunos' else
       QBolsap38.Caption := '****';
   if (DM2.BolsaMCONTP39.Value <> 0) then QBolsap39.Caption := '39% - '+DM2.BolsaMCONTP39.Text+'-Alunos' else
       QBolsap39.Caption := '****';
   if (DM2.BolsaMCONTP40.Value <> 0) then QBolsap40.Caption := '40% - '+DM2.BolsaMCONTP40.Text+'-Alunos' else
       QBolsap40.Caption := '****';
   if (DM2.BolsaMCONTP41.Value <> 0) then QBolsap41.Caption := '41% - '+DM2.BolsaMCONTP41.Text+'-Alunos' else
       QBolsap41.Caption := '****';
   if (DM2.BolsaMCONTP42.Value <> 0) then QBolsap42.Caption := '42% - '+DM2.BolsaMCONTP42.Text+'-Alunos' else
       QBolsap42.Caption := '****';
   if (DM2.BolsaMCONTP43.Value <> 0) then QBolsap43.Caption := '43% - '+DM2.BolsaMCONTP43.Text+'-Alunos' else
       QBolsap43.Caption := '****';
   if (DM2.BolsaMCONTP44.Value <> 0) then QBolsap44.Caption := '44% - '+DM2.BolsaMCONTP44.Text+'-Alunos' else
       QBolsap44.Caption := '****';
   if (DM2.BolsaMCONTP45.Value <> 0) then QBolsap45.Caption := '45% - '+DM2.BolsaMCONTP45.Text+'-Alunos' else
       QBolsap45.Caption := '****';
   if (DM2.BolsaMCONTP46.Value <> 0) then QBolsap46.Caption := '46% - '+DM2.BolsaMCONTP46.Text+'-Alunos' else
       QBolsap46.Caption := '****';
   if (DM2.BolsaMCONTP47.Value <> 0) then QBolsap47.Caption := '47% - '+DM2.BolsaMCONTP47.Text+'-Alunos' else
       QBolsap47.Caption := '****';
   if (DM2.BolsaMCONTP48.Value <> 0) then QBolsap48.Caption := '48% - '+DM2.BolsaMCONTP48.Text+'-Alunos' else
       QBolsap48.Caption := '****';
   if (DM2.BolsaMCONTP49.Value <> 0) then QBolsap49.Caption := '49% - '+DM2.BolsaMCONTP49.Text+'-Alunos' else
       QBolsap49.Caption := '****';
   if (DM2.BolsaMCONTP50.Value <> 0) then QBolsap50.Caption := '50% - '+DM2.BolsaMCONTP50.Text+'-Alunos' else
       QBolsap50.Caption := '****';
   if (DM2.BolsaMCONTP51.Value <> 0) then QBolsap51.Caption := '51% - '+DM2.BolsaMCONTP51.Text+'-Alunos' else
       QBolsap51.Caption := '****';
   if (DM2.BolsaMCONTP52.Value <> 0) then QBolsap52.Caption := '52% - '+DM2.BolsaMCONTP52.Text+'-Alunos' else
       QBolsap52.Caption := '****';
   if (DM2.BolsaMCONTP53.Value <> 0) then QBolsap53.Caption := '53% - '+DM2.BolsaMCONTP53.Text+'-Alunos' else
       QBolsap53.Caption := '****';
   if (DM2.BolsaMCONTP54.Value <> 0) then QBolsap54.Caption := '54% - '+DM2.BolsaMCONTP54.Text+'-Alunos' else
       QBolsap54.Caption := '****';
   if (DM2.BolsaMCONTP55.Value <> 0) then QBolsap55.Caption := '55% - '+DM2.BolsaMCONTP55.Text+'-Alunos' else
       QBolsap55.Caption := '****';
   if (DM2.BolsaMCONTP56.Value <> 0) then QBolsap56.Caption := '56% - '+DM2.BolsaMCONTP56.Text+'-Alunos' else
       QBolsap56.Caption := '****';
   if (DM2.BolsaMCONTP57.Value <> 0) then QBolsap57.Caption := '57% - '+DM2.BolsaMCONTP57.Text+'-Alunos' else
       QBolsap57.Caption := '****';
   if (DM2.BolsaMCONTP58.Value <> 0) then QBolsap58.Caption := '58% - '+DM2.BolsaMCONTP58.Text+'-Alunos' else
       QBolsap58.Caption := '****';
   if (DM2.BolsaMCONTP59.Value <> 0) then QBolsap59.Caption := '59% - '+DM2.BolsaMCONTP59.Text+'-Alunos' else
       QBolsap59.Caption := '****';
   if (DM2.BolsaMCONTP60.Value <> 0) then QBolsap60.Caption := '60% - '+DM2.BolsaMCONTP60.Text+'-Alunos' else
       QBolsap60.Caption := '****';
   if (DM2.BolsaMCONTP61.Value <> 0) then QBolsap61.Caption := '61% - '+DM2.BolsaMCONTP61.Text+'-Alunos' else
       QBolsap61.Caption := '****';
   if (DM2.BolsaMCONTP62.Value <> 0) then QBolsap62.Caption := '62% - '+DM2.BolsaMCONTP62.Text+'-Alunos' else
       QBolsap62.Caption := '****';
   if (DM2.BolsaMCONTP63.Value <> 0) then QBolsap63.Caption := '63% - '+DM2.BolsaMCONTP63.Text+'-Alunos' else
       QBolsap63.Caption := '****';
   if (DM2.BolsaMCONTP64.Value <> 0) then QBolsap64.Caption := '64% - '+DM2.BolsaMCONTP64.Text+'-Alunos' else
       QBolsap64.Caption := '****';
   if (DM2.BolsaMCONTP65.Value <> 0) then QBolsap65.Caption := '65% - '+DM2.BolsaMCONTP65.Text+'-Alunos' else
       QBolsap65.Caption := '****';
   if (DM2.BolsaMCONTP66.Value <> 0) then QBolsap66.Caption := '66% - '+DM2.BolsaMCONTP66.Text+'-Alunos' else
       QBolsap66.Caption := '****';
   if (DM2.BolsaMCONTP67.Value <> 0) then QBolsap67.Caption := '67% - '+DM2.BolsaMCONTP67.Text+'-Alunos' else
       QBolsap67.Caption := '****';
   if (DM2.BolsaMCONTP68.Value <> 0) then QBolsap68.Caption := '68% - '+DM2.BolsaMCONTP68.Text+'-Alunos' else
       QBolsap68.Caption := '****';
   if (DM2.BolsaMCONTP69.Value <> 0) then QBolsap69.Caption := '69% - '+DM2.BolsaMCONTP69.Text+'-Alunos' else
       QBolsap69.Caption := '****';
   if (DM2.BolsaMCONTP70.Value <> 0) then QBolsap70.Caption := '70% - '+DM2.BolsaMCONTP70.Text+'-Alunos' else
       QBolsap70.Caption := '****';
   if (DM2.BolsaMCONTP71.Value <> 0) then QBolsap71.Caption := '71% - '+DM2.BolsaMCONTP71.Text+'-Alunos' else
       QBolsap71.Caption := '****';
   if (DM2.BolsaMCONTP72.Value <> 0) then QBolsap72.Caption := '72% - '+DM2.BolsaMCONTP72.Text+'-Alunos' else
       QBolsap72.Caption := '****';
   if (DM2.BolsaMCONTP73.Value <> 0) then QBolsap73.Caption := '73% - '+DM2.BolsaMCONTP73.Text+'-Alunos' else
       QBolsap73.Caption := '****';
   if (DM2.BolsaMCONTP74.Value <> 0) then QBolsap74.Caption := '74% - '+DM2.BolsaMCONTP74.Text+'-Alunos' else
       QBolsap74.Caption := '****';
   if (DM2.BolsaMCONTP75.Value <> 0) then QBolsap75.Caption := '75% - '+DM2.BolsaMCONTP75.Text+'-Alunos' else
       QBolsap75.Caption := '****';
   if (DM2.BolsaMCONTP76.Value <> 0) then QBolsap76.Caption := '76% - '+DM2.BolsaMCONTP76.Text+'-Alunos' else
       QBolsap76.Caption := '****';
   if (DM2.BolsaMCONTP77.Value <> 0) then QBolsap77.Caption := '77% - '+DM2.BolsaMCONTP77.Text+'-Alunos' else
       QBolsap77.Caption := '****';
   if (DM2.BolsaMCONTP78.Value <> 0) then QBolsap78.Caption := '78% - '+DM2.BolsaMCONTP78.Text+'-Alunos' else
       QBolsap78.Caption := '****';
   if (DM2.BolsaMCONTP79.Value <> 0) then QBolsap79.Caption := '79% - '+DM2.BolsaMCONTP79.Text+'-Alunos' else
       QBolsap79.Caption := '****';
   if (DM2.BolsaMCONTP80.Value <> 0) then QBolsap80.Caption := '80% - '+DM2.BolsaMCONTP80.Text+'-Alunos' else
       QBolsap80.Caption := '****';
   if (DM2.BolsaMCONTP81.Value <> 0) then QBolsap81.Caption := '81% - '+DM2.BolsaMCONTP81.Text+'-Alunos' else
       QBolsap81.Caption := '****';
   if (DM2.BolsaMCONTP82.Value <> 0) then QBolsap82.Caption := '82% - '+DM2.BolsaMCONTP82.Text+'-Alunos' else
       QBolsap82.Caption := '****';
   if (DM2.BolsaMCONTP83.Value <> 0) then QBolsap83.Caption := '83% - '+DM2.BolsaMCONTP83.Text+'-Alunos' else
       QBolsap83.Caption := '****';
   if (DM2.BolsaMCONTP84.Value <> 0) then QBolsap84.Caption := '84% - '+DM2.BolsaMCONTP84.Text+'-Alunos' else
       QBolsap84.Caption := '****';
   if (DM2.BolsaMCONTP85.Value <> 0) then QBolsap85.Caption := '85% - '+DM2.BolsaMCONTP85.Text+'-Alunos' else
       QBolsap85.Caption := '****';
   if (DM2.BolsaMCONTP86.Value <> 0) then QBolsap86.Caption := '86% - '+DM2.BolsaMCONTP86.Text+'-Alunos' else
       QBolsap86.Caption := '****';
   if (DM2.BolsaMCONTP87.Value <> 0) then QBolsap87.Caption := '87% - '+DM2.BolsaMCONTP87.Text+'-Alunos' else
       QBolsap87.Caption := '****';
   if (DM2.BolsaMCONTP88.Value <> 0) then QBolsap88.Caption := '88% - '+DM2.BolsaMCONTP88.Text+'-Alunos' else
       QBolsap88.Caption := '****';
   if (DM2.BolsaMCONTP89.Value <> 0) then QBolsap89.Caption := '89% - '+DM2.BolsaMCONTP89.Text+'-Alunos' else
       QBolsap89.Caption := '****';
   if (DM2.BolsaMCONTP90.Value <> 0) then QBolsap90.Caption := '90% - '+DM2.BolsaMCONTP90.Text+'-Alunos' else
       QBolsap90.Caption := '****';
   if (DM2.BolsaMCONTP91.Value <> 0) then QBolsap91.Caption := '91% - '+DM2.BolsaMCONTP91.Text+'-Alunos' else
       QBolsap91.Caption := '****';
   if (DM2.BolsaMCONTP92.Value <> 0) then QBolsap92.Caption := '92% - '+DM2.BolsaMCONTP92.Text+'-Alunos' else
       QBolsap92.Caption := '****';
   if (DM2.BolsaMCONTP93.Value <> 0) then QBolsap93.Caption := '93% - '+DM2.BolsaMCONTP93.Text+'-Alunos' else
       QBolsap93.Caption := '****';
   if (DM2.BolsaMCONTP94.Value <> 0) then QBolsap94.Caption := '94% - '+DM2.BolsaMCONTP94.Text+'-Alunos' else
       QBolsap94.Caption := '****';
   if (DM2.BolsaMCONTP95.Value <> 0) then QBolsap95.Caption := '95% - '+DM2.BolsaMCONTP95.Text+'-Alunos' else
       QBolsap95.Caption := '****';
   if (DM2.BolsaMCONTP96.Value <> 0) then QBolsap96.Caption := '96% - '+DM2.BolsaMCONTP96.Text+'-Alunos' else
       QBolsap96.Caption := '****';
   if (DM2.BolsaMCONTP97.Value <> 0) then QBolsap97.Caption := '97% - '+DM2.BolsaMCONTP97.Text+'-Alunos' else
       QBolsap97.Caption := '****';
   if (DM2.BolsaMCONTP98.Value <> 0) then QBolsap98.Caption := '98% - '+DM2.BolsaMCONTP98.Text+'-Alunos' else
       QBolsap98.Caption := '****';
   if (DM2.BolsaMCONTP99.Value <> 0) then QBolsap99.Caption := '99% - '+DM2.BolsaMCONTP99.Text+'-Alunos' else
       QBolsap99.Caption := '****';
   if (DM2.BolsaMCONTP100.Value <> 0) then QBolsap100.Caption := '100% - '+DM2.BolsaMCONTP100.Text+'-Alunos' else
       QBolsap100.Caption := '****';

       {***********************************************SEGUNDA SÉRIE**************************}

   if (DM2.BolsaMCONTS0.Value <> 0) then QBolsas0.Caption := '0% - '+DM2.BolsaMCONTS0.Text+'-Alunos' else
       QBolsas0.Caption := '****';
   if (DM2.BolsaMCONTS1.Value <> 0) then QBolsas1.Caption := '1% - '+DM2.BolsaMCONTS1.Text+'-Alunos' else
       QBolsas1.Caption := '****';
   if (DM2.BolsaMCONTS2.Value <> 0) then QBolsas2.Caption := '2% - '+DM2.BolsaMCONTS2.Text+'-Alunos' else
       QBolsas2.Caption := '****';
   if (DM2.BolsaMCONTS3.Value <> 0) then QBolsas3.Caption := '3% - '+DM2.BolsaMCONTS3.Text+'-Alunos' else
       QBolsas3.Caption := '****';
   if (DM2.BolsaMCONTS4.Value <> 0) then QBolsas4.Caption := '4% - '+DM2.BolsaMCONTS4.Text+'-Alunos' else
       QBolsas4.Caption := '****';
   if (DM2.BolsaMCONTS5.Value <> 0) then QBolsas5.Caption := '5% - '+DM2.BolsaMCONTS5.Text+'-Alunos' else
       QBolsas5.Caption := '****';
   if (DM2.BolsaMCONTS6.Value <> 0) then QBolsas6.Caption := '6% - '+DM2.BolsaMCONTS6.Text+'-Alunos' else
       QBolsas6.Caption := '****';
   if (DM2.BolsaMCONTS7.Value <> 0) then QBolsas7.Caption := '7% - '+DM2.BolsaMCONTS7.Text+'-Alunos' else
       QBolsas7.Caption := '****';
   if (DM2.BolsaMCONTS8.Value <> 0) then QBolsas8.Caption := '8% - '+DM2.BolsaMCONTS8.Text+'-Alunos' else
       QBolsas8.Caption := '****';
   if (DM2.BolsaMCONTS9.Value <> 0) then QBolsas9.Caption := '9% - '+DM2.BolsaMCONTS9.Text+'-Alunos' else
       QBolsas9.Caption := '****';
   if (DM2.BolsaMCONTS10.Value <> 0) then QBolsas10.Caption := '10% - '+DM2.BolsaMCONTS10.Text+'-Alunos' else
       QBolsas10.Caption := '****';
   if (DM2.BolsaMCONTS11.Value <> 0) then QBolsas11.Caption := '11% - '+DM2.BolsaMCONTS11.Text+'-Alunos' else
       QBolsas11.Caption := '****';
   if (DM2.BolsaMCONTS12.Value <> 0) then QBolsas12.Caption := '12% - '+DM2.BolsaMCONTS12.Text+'-Alunos' else
       QBolsas12.Caption := '****';
   if (DM2.BolsaMCONTS13.Value <> 0) then QBolsas13.Caption := '13% - '+DM2.BolsaMCONTS13.Text+'-Alunos' else
       QBolsas13.Caption := '****';
   if (DM2.BolsaMCONTS14.Value <> 0) then QBolsas14.Caption := '14% - '+DM2.BolsaMCONTS14.Text+'-Alunos' else
       QBolsas14.Caption := '****';
   if (DM2.BolsaMCONTS15.Value <> 0) then QBolsas15.Caption := '15% - '+DM2.BolsaMCONTS15.Text+'-Alunos' else
       QBolsas15.Caption := '****';
   if (DM2.BolsaMCONTS16.Value <> 0) then QBolsas16.Caption := '16% - '+DM2.BolsaMCONTS16.Text+'-Alunos' else
       QBolsas16.Caption := '****';
   if (DM2.BolsaMCONTS17.Value <> 0) then QBolsas17.Caption := '17% - '+DM2.BolsaMCONTS17.Text+'-Alunos' else
       QBolsas17.Caption := '****';
   if (DM2.BolsaMCONTS18.Value <> 0) then QBolsas18.Caption := '18% - '+DM2.BolsaMCONTS18.Text+'-Alunos' else
       QBolsas18.Caption := '****';
   if (DM2.BolsaMCONTS19.Value <> 0) then QBolsas19.Caption := '19% - '+DM2.BolsaMCONTS19.Text+'-Alunos' else
       QBolsas19.Caption := '****';
   if (DM2.BolsaMCONTS20.Value <> 0) then QBolsas20.Caption := '20% - '+DM2.BolsaMCONTS20.Text+'-Alunos' else
       QBolsas20.Caption := '****';
   if (DM2.BolsaMCONTS21.Value <> 0) then QBolsas21.Caption := '21% - '+DM2.BolsaMCONTS21.Text+'-Alunos' else
       QBolsas21.Caption := '****';
   if (DM2.BolsaMCONTS22.Value <> 0) then QBolsas22.Caption := '22% - '+DM2.BolsaMCONTS22.Text+'-Alunos' else
       QBolsas22.Caption := '****';
   if (DM2.BolsaMCONTS23.Value <> 0) then QBolsas23.Caption := '23% - '+DM2.BolsaMCONTS23.Text+'-Alunos' else
       QBolsas23.Caption := '****';
   if (DM2.BolsaMCONTS24.Value <> 0) then QBolsas24.Caption := '24% - '+DM2.BolsaMCONTS24.Text+'-Alunos' else
       QBolsas24.Caption := '****';
   if (DM2.BolsaMCONTS25.Value <> 0) then QBolsas25.Caption := '25% - '+DM2.BolsaMCONTS25.Text+'-Alunos' else
       QBolsas25.Caption := '****';
   if (DM2.BolsaMCONTS26.Value <> 0) then QBolsas26.Caption := '26% - '+DM2.BolsaMCONTS26.Text+'-Alunos' else
       QBolsas26.Caption := '****';
   if (DM2.BolsaMCONTS27.Value <> 0) then QBolsas27.Caption := '27% - '+DM2.BolsaMCONTS27.Text+'-Alunos' else
       QBolsas27.Caption := '****';
   if (DM2.BolsaMCONTS28.Value <> 0) then QBolsas28.Caption := '28% - '+DM2.BolsaMCONTS28.Text+'-Alunos' else
       QBolsas28.Caption := '****';
   if (DM2.BolsaMCONTS29.Value <> 0) then QBolsas29.Caption := '29% - '+DM2.BolsaMCONTS29.Text+'-Alunos' else
       QBolsas29.Caption := '****';
   if (DM2.BolsaMCONTS30.Value <> 0) then QBolsas30.Caption := '30% - '+DM2.BolsaMCONTS30.Text+'-Alunos' else
       QBolsas30.Caption := '****';
   if (DM2.BolsaMCONTS31.Value <> 0) then QBolsas31.Caption := '31% - '+DM2.BolsaMCONTS31.Text+'-Alunos' else
       QBolsas31.Caption := '****';
   if (DM2.BolsaMCONTS32.Value <> 0) then QBolsas32.Caption := '32% - '+DM2.BolsaMCONTS32.Text+'-Alunos' else
       QBolsas32.Caption := '****';
   if (DM2.BolsaMCONTS33.Value <> 0) then QBolsas33.Caption := '33% - '+DM2.BolsaMCONTS33.Text+'-Alunos' else
       QBolsas33.Caption := '****';
   if (DM2.BolsaMCONTS34.Value <> 0) then QBolsas34.Caption := '34% - '+DM2.BolsaMCONTS34.Text+'-Alunos' else
       QBolsas34.Caption := '****';
   if (DM2.BolsaMCONTS35.Value <> 0) then QBolsas35.Caption := '35% - '+DM2.BolsaMCONTS35.Text+'-Alunos' else
       QBolsas35.Caption := '****';
   if (DM2.BolsaMCONTS36.Value <> 0) then QBolsas36.Caption := '36% - '+DM2.BolsaMCONTS36.Text+'-Alunos' else
       QBolsas36.Caption := '****';
   if (DM2.BolsaMCONTS37.Value <> 0) then QBolsas37.Caption := '37% - '+DM2.BolsaMCONTS37.Text+'-Alunos' else
       QBolsas37.Caption := '****';
   if (DM2.BolsaMCONTS38.Value <> 0) then QBolsas38.Caption := '38% - '+DM2.BolsaMCONTS38.Text+'-Alunos' else
       QBolsas38.Caption := '****';
   if (DM2.BolsaMCONTS39.Value <> 0) then QBolsas39.Caption := '39% - '+DM2.BolsaMCONTS39.Text+'-Alunos' else
       QBolsas39.Caption := '****';
   if (DM2.BolsaMCONTS40.Value <> 0) then QBolsas40.Caption := '40% - '+DM2.BolsaMCONTS40.Text+'-Alunos' else
       QBolsas40.Caption := '****';
   if (DM2.BolsaMCONTS41.Value <> 0) then QBolsas41.Caption := '41% - '+DM2.BolsaMCONTS41.Text+'-Alunos' else
       QBolsas41.Caption := '****';
   if (DM2.BolsaMCONTS42.Value <> 0) then QBolsas42.Caption := '42% - '+DM2.BolsaMCONTS42.Text+'-Alunos' else
       QBolsas42.Caption := '****';
   if (DM2.BolsaMCONTS43.Value <> 0) then QBolsas43.Caption := '43% - '+DM2.BolsaMCONTS43.Text+'-Alunos' else
       QBolsas43.Caption := '****';
   if (DM2.BolsaMCONTS44.Value <> 0) then QBolsas44.Caption := '44% - '+DM2.BolsaMCONTS44.Text+'-Alunos' else
       QBolsas44.Caption := '****';
   if (DM2.BolsaMCONTS45.Value <> 0) then QBolsas45.Caption := '45% - '+DM2.BolsaMCONTS45.Text+'-Alunos' else
       QBolsas45.Caption := '****';
   if (DM2.BolsaMCONTS46.Value <> 0) then QBolsas46.Caption := '46% - '+DM2.BolsaMCONTS46.Text+'-Alunos' else
       QBolsas46.Caption := '****';
   if (DM2.BolsaMCONTS47.Value <> 0) then QBolsas47.Caption := '47% - '+DM2.BolsaMCONTS47.Text+'-Alunos' else
       QBolsas47.Caption := '****';
   if (DM2.BolsaMCONTS48.Value <> 0) then QBolsas48.Caption := '48% - '+DM2.BolsaMCONTS48.Text+'-Alunos' else
       QBolsas48.Caption := '****';
   if (DM2.BolsaMCONTS49.Value <> 0) then QBolsas49.Caption := '49% - '+DM2.BolsaMCONTS49.Text+'-Alunos' else
       QBolsas49.Caption := '****';
   if (DM2.BolsaMCONTS50.Value <> 0) then QBolsas50.Caption := '50% - '+DM2.BolsaMCONTS50.Text+'-Alunos' else
       QBolsas50.Caption := '****';
   if (DM2.BolsaMCONTS51.Value <> 0) then QBolsas51.Caption := '51% - '+DM2.BolsaMCONTS51.Text+'-Alunos' else
       QBolsas51.Caption := '****';
   if (DM2.BolsaMCONTS52.Value <> 0) then QBolsas52.Caption := '52% - '+DM2.BolsaMCONTS52.Text+'-Alunos' else
       QBolsas52.Caption := '****';
   if (DM2.BolsaMCONTS53.Value <> 0) then QBolsas53.Caption := '53% - '+DM2.BolsaMCONTS53.Text+'-Alunos' else
       QBolsas53.Caption := '****';
   if (DM2.BolsaMCONTS54.Value <> 0) then QBolsas54.Caption := '54% - '+DM2.BolsaMCONTS54.Text+'-Alunos' else
       QBolsas54.Caption := '****';
   if (DM2.BolsaMCONTS55.Value <> 0) then QBolsas55.Caption := '55% - '+DM2.BolsaMCONTS55.Text+'-Alunos' else
       QBolsas55.Caption := '****';
   if (DM2.BolsaMCONTS56.Value <> 0) then QBolsas56.Caption := '56% - '+DM2.BolsaMCONTS56.Text+'-Alunos' else
       QBolsas56.Caption := '****';
   if (DM2.BolsaMCONTS57.Value <> 0) then QBolsas57.Caption := '57% - '+DM2.BolsaMCONTS57.Text+'-Alunos' else
       QBolsas57.Caption := '****';
   if (DM2.BolsaMCONTS58.Value <> 0) then QBolsas58.Caption := '58% - '+DM2.BolsaMCONTS58.Text+'-Alunos' else
       QBolsas58.Caption := '****';
   if (DM2.BolsaMCONTS59.Value <> 0) then QBolsas59.Caption := '59% - '+DM2.BolsaMCONTS59.Text+'-Alunos' else
       QBolsas59.Caption := '****';
   if (DM2.BolsaMCONTS60.Value <> 0) then QBolsas60.Caption := '60% - '+DM2.BolsaMCONTS60.Text+'-Alunos' else
       QBolsas60.Caption := '****';
   if (DM2.BolsaMCONTS61.Value <> 0) then QBolsas61.Caption := '61% - '+DM2.BolsaMCONTS61.Text+'-Alunos' else
       QBolsas61.Caption := '****';
   if (DM2.BolsaMCONTS62.Value <> 0) then QBolsas62.Caption := '62% - '+DM2.BolsaMCONTS62.Text+'-Alunos' else
       QBolsas62.Caption := '****';
   if (DM2.BolsaMCONTS63.Value <> 0) then QBolsas63.Caption := '63% - '+DM2.BolsaMCONTS63.Text+'-Alunos' else
       QBolsas63.Caption := '****';
   if (DM2.BolsaMCONTS64.Value <> 0) then QBolsas64.Caption := '64% - '+DM2.BolsaMCONTS64.Text+'-Alunos' else
       QBolsas64.Caption := '****';
   if (DM2.BolsaMCONTS65.Value <> 0) then QBolsas65.Caption := '65% - '+DM2.BolsaMCONTS65.Text+'-Alunos' else
       QBolsas65.Caption := '****';
   if (DM2.BolsaMCONTS66.Value <> 0) then QBolsas66.Caption := '66% - '+DM2.BolsaMCONTS66.Text+'-Alunos' else
       QBolsas66.Caption := '****';
   if (DM2.BolsaMCONTS67.Value <> 0) then QBolsas67.Caption := '67% - '+DM2.BolsaMCONTS67.Text+'-Alunos' else
       QBolsas67.Caption := '****';
   if (DM2.BolsaMCONTS68.Value <> 0) then QBolsas68.Caption := '68% - '+DM2.BolsaMCONTS68.Text+'-Alunos' else
       QBolsas68.Caption := '****';
   if (DM2.BolsaMCONTS69.Value <> 0) then QBolsas69.Caption := '69% - '+DM2.BolsaMCONTS69.Text+'-Alunos' else
       QBolsas69.Caption := '****';
   if (DM2.BolsaMCONTS70.Value <> 0) then QBolsas70.Caption := '70% - '+DM2.BolsaMCONTS70.Text+'-Alunos' else
       QBolsas70.Caption := '****';
   if (DM2.BolsaMCONTS71.Value <> 0) then QBolsas71.Caption := '71% - '+DM2.BolsaMCONTS71.Text+'-Alunos' else
       QBolsas71.Caption := '****';
   if (DM2.BolsaMCONTS72.Value <> 0) then QBolsas72.Caption := '72% - '+DM2.BolsaMCONTS72.Text+'-Alunos' else
       QBolsas72.Caption := '****';
   if (DM2.BolsaMCONTS73.Value <> 0) then QBolsas73.Caption := '73% - '+DM2.BolsaMCONTS73.Text+'-Alunos' else
       QBolsas73.Caption := '****';
   if (DM2.BolsaMCONTS74.Value <> 0) then QBolsas74.Caption := '74% - '+DM2.BolsaMCONTS74.Text+'-Alunos' else
       QBolsas74.Caption := '****';
   if (DM2.BolsaMCONTS75.Value <> 0) then QBolsas75.Caption := '75% - '+DM2.BolsaMCONTS75.Text+'-Alunos' else
       QBolsas75.Caption := '****';
   if (DM2.BolsaMCONTS76.Value <> 0) then QBolsas76.Caption := '76% - '+DM2.BolsaMCONTS76.Text+'-Alunos' else
       QBolsas76.Caption := '****';
   if (DM2.BolsaMCONTS77.Value <> 0) then QBolsas77.Caption := '77% - '+DM2.BolsaMCONTS77.Text+'-Alunos' else
       QBolsas77.Caption := '****';
   if (DM2.BolsaMCONTS78.Value <> 0) then QBolsas78.Caption := '78% - '+DM2.BolsaMCONTS78.Text+'-Alunos' else
       QBolsas78.Caption := '****';
   if (DM2.BolsaMCONTS79.Value <> 0) then QBolsas79.Caption := '79% - '+DM2.BolsaMCONTS79.Text+'-Alunos' else
       QBolsas79.Caption := '****';
   if (DM2.BolsaMCONTS80.Value <> 0) then QBolsas80.Caption := '80% - '+DM2.BolsaMCONTS80.Text+'-Alunos' else
       QBolsas80.Caption := '****';
   if (DM2.BolsaMCONTS81.Value <> 0) then QBolsas81.Caption := '81% - '+DM2.BolsaMCONTS81.Text+'-Alunos' else
       QBolsas81.Caption := '****';
   if (DM2.BolsaMCONTS82.Value <> 0) then QBolsas82.Caption := '82% - '+DM2.BolsaMCONTS82.Text+'-Alunos' else
       QBolsas82.Caption := '****';
   if (DM2.BolsaMCONTS83.Value <> 0) then QBolsas83.Caption := '83% - '+DM2.BolsaMCONTS83.Text+'-Alunos' else
       QBolsas83.Caption := '****';
   if (DM2.BolsaMCONTS84.Value <> 0) then QBolsas84.Caption := '84% - '+DM2.BolsaMCONTS84.Text+'-Alunos' else
       QBolsas84.Caption := '****';
   if (DM2.BolsaMCONTS85.Value <> 0) then QBolsas85.Caption := '85% - '+DM2.BolsaMCONTS85.Text+'-Alunos' else
       QBolsas85.Caption := '****';
   if (DM2.BolsaMCONTS86.Value <> 0) then QBolsas86.Caption := '86% - '+DM2.BolsaMCONTS86.Text+'-Alunos' else
       QBolsas86.Caption := '****';
   if (DM2.BolsaMCONTS87.Value <> 0) then QBolsas87.Caption := '87% - '+DM2.BolsaMCONTS87.Text+'-Alunos' else
       QBolsas87.Caption := '****';
   if (DM2.BolsaMCONTS88.Value <> 0) then QBolsas88.Caption := '88% - '+DM2.BolsaMCONTS88.Text+'-Alunos' else
       QBolsas88.Caption := '****';
   if (DM2.BolsaMCONTS89.Value <> 0) then QBolsas89.Caption := '89% - '+DM2.BolsaMCONTS89.Text+'-Alunos' else
       QBolsas89.Caption := '****';
   if (DM2.BolsaMCONTS90.Value <> 0) then QBolsas90.Caption := '90% - '+DM2.BolsaMCONTS90.Text+'-Alunos' else
       QBolsas90.Caption := '****';
   if (DM2.BolsaMCONTS91.Value <> 0) then QBolsas91.Caption := '91% - '+DM2.BolsaMCONTS91.Text+'-Alunos' else
       QBolsas91.Caption := '****';
   if (DM2.BolsaMCONTS92.Value <> 0) then QBolsas92.Caption := '92% - '+DM2.BolsaMCONTS92.Text+'-Alunos' else
       QBolsas92.Caption := '****';
   if (DM2.BolsaMCONTS93.Value <> 0) then QBolsas93.Caption := '93% - '+DM2.BolsaMCONTS93.Text+'-Alunos' else
       QBolsas93.Caption := '****';
   if (DM2.BolsaMCONTS94.Value <> 0) then QBolsas94.Caption := '94% - '+DM2.BolsaMCONTS94.Text+'-Alunos' else
       QBolsas94.Caption := '****';
   if (DM2.BolsaMCONTS95.Value <> 0) then QBolsas95.Caption := '95% - '+DM2.BolsaMCONTS95.Text+'-Alunos' else
       QBolsas95.Caption := '****';
   if (DM2.BolsaMCONTS96.Value <> 0) then QBolsas96.Caption := '96% - '+DM2.BolsaMCONTS96.Text+'-Alunos' else
       QBolsas96.Caption := '****';
   if (DM2.BolsaMCONTS97.Value <> 0) then QBolsas97.Caption := '97% - '+DM2.BolsaMCONTS97.Text+'-Alunos' else
       QBolsas97.Caption := '****';
   if (DM2.BolsaMCONTS98.Value <> 0) then QBolsas98.Caption := '98% - '+DM2.BolsaMCONTS98.Text+'-Alunos' else
       QBolsas98.Caption := '****';
   if (DM2.BolsaMCONTS99.Value <> 0) then QBolsas99.Caption := '99% - '+DM2.BolsaMCONTS99.Text+'-Alunos' else
       QBolsas99.Caption := '****';
   if (DM2.BolsaMCONTS100.Value <> 0) then QBolsas100.Caption := '100% - '+DM2.BolsaMCONTS100.Text+'-Alunos' else
       QBolsas100.Caption := '****';

   {*****************************************Terceira Série**************************}

   if (DM2.BolsaMCONTT0.Value <> 0) then QBolsat0.Caption := '0% - '+DM2.BolsaMCONTT0.Text+'-Alunos' else
       QBolsat0.Caption := '****';
   if (DM2.BolsaMCONTT1.Value <> 0) then QBolsat1.Caption := '1% - '+DM2.BolsaMCONTT1.Text+'-Alunos' else
       QBolsat1.Caption := '****';
   if (DM2.BolsaMCONTT2.Value <> 0) then QBolsat2.Caption := '2% - '+DM2.BolsaMCONTT2.Text+'-Alunos' else
       QBolsat2.Caption := '****';
   if (DM2.BolsaMCONTT3.Value <> 0) then QBolsat3.Caption := '3% - '+DM2.BolsaMCONTT3.Text+'-Alunos' else
       QBolsat3.Caption := '****';
   if (DM2.BolsaMCONTT4.Value <> 0) then QBolsat4.Caption := '4% - '+DM2.BolsaMCONTT4.Text+'-Alunos' else
       QBolsat4.Caption := '****';
   if (DM2.BolsaMCONTT5.Value <> 0) then QBolsat5.Caption := '5% - '+DM2.BolsaMCONTT5.Text+'-Alunos' else
       QBolsat5.Caption := '****';
   if (DM2.BolsaMCONTT6.Value <> 0) then QBolsat6.Caption := '6% - '+DM2.BolsaMCONTT6.Text+'-Alunos' else
       QBolsat6.Caption := '****';
   if (DM2.BolsaMCONTT7.Value <> 0) then QBolsat7.Caption := '7% - '+DM2.BolsaMCONTT7.Text+'-Alunos' else
       QBolsat7.Caption := '****';
   if (DM2.BolsaMCONTT8.Value <> 0) then QBolsat8.Caption := '8% - '+DM2.BolsaMCONTT8.Text+'-Alunos' else
       QBolsat8.Caption := '****';
   if (DM2.BolsaMCONTT9.Value <> 0) then QBolsat9.Caption := '9% - '+DM2.BolsaMCONTT9.Text+'-Alunos' else
       QBolsat9.Caption := '****';
   if (DM2.BolsaMCONTT10.Value <> 0) then QBolsat10.Caption := '10% - '+DM2.BolsaMCONTT10.Text+'-Alunos' else
       QBolsat10.Caption := '****';
   if (DM2.BolsaMCONTT11.Value <> 0) then QBolsat11.Caption := '11% - '+DM2.BolsaMCONTT11.Text+'-Alunos' else
       QBolsat11.Caption := '****';
   if (DM2.BolsaMCONTT12.Value <> 0) then QBolsat12.Caption := '12% - '+DM2.BolsaMCONTT12.Text+'-Alunos' else
       QBolsat12.Caption := '****';
   if (DM2.BolsaMCONTT13.Value <> 0) then QBolsat13.Caption := '13% - '+DM2.BolsaMCONTT13.Text+'-Alunos' else
       QBolsat13.Caption := '****';
   if (DM2.BolsaMCONTT14.Value <> 0) then QBolsat14.Caption := '14% - '+DM2.BolsaMCONTT14.Text+'-Alunos' else
       QBolsat14.Caption := '****';
   if (DM2.BolsaMCONTT15.Value <> 0) then QBolsat15.Caption := '15% - '+DM2.BolsaMCONTT15.Text+'-Alunos' else
       QBolsat15.Caption := '****';
   if (DM2.BolsaMCONTT16.Value <> 0) then QBolsat16.Caption := '16% - '+DM2.BolsaMCONTT16.Text+'-Alunos' else
       QBolsat16.Caption := '****';
   if (DM2.BolsaMCONTT17.Value <> 0) then QBolsat17.Caption := '17% - '+DM2.BolsaMCONTT17.Text+'-Alunos' else
       QBolsat17.Caption := '****';
   if (DM2.BolsaMCONTT18.Value <> 0) then QBolsat18.Caption := '18% - '+DM2.BolsaMCONTT18.Text+'-Alunos' else
       QBolsat18.Caption := '****';
   if (DM2.BolsaMCONTT19.Value <> 0) then QBolsat19.Caption := '19% - '+DM2.BolsaMCONTT19.Text+'-Alunos' else
       QBolsat19.Caption := '****';
   if (DM2.BolsaMCONTT20.Value <> 0) then QBolsat20.Caption := '20% - '+DM2.BolsaMCONTT20.Text+'-Alunos' else
       QBolsat20.Caption := '****';
   if (DM2.BolsaMCONTT21.Value <> 0) then QBolsat21.Caption := '21% - '+DM2.BolsaMCONTT21.Text+'-Alunos' else
       QBolsat21.Caption := '****';
   if (DM2.BolsaMCONTT22.Value <> 0) then QBolsat22.Caption := '22% - '+DM2.BolsaMCONTT22.Text+'-Alunos' else
       QBolsat22.Caption := '****';
   if (DM2.BolsaMCONTT23.Value <> 0) then QBolsat23.Caption := '23% - '+DM2.BolsaMCONTT23.Text+'-Alunos' else
       QBolsat23.Caption := '****';
   if (DM2.BolsaMCONTT24.Value <> 0) then QBolsat24.Caption := '24% - '+DM2.BolsaMCONTT24.Text+'-Alunos' else
       QBolsat24.Caption := '****';
   if (DM2.BolsaMCONTT25.Value <> 0) then QBolsat25.Caption := '25% - '+DM2.BolsaMCONTT25.Text+'-Alunos' else
       QBolsat25.Caption := '****';
   if (DM2.BolsaMCONTT26.Value <> 0) then QBolsat26.Caption := '26% - '+DM2.BolsaMCONTT26.Text+'-Alunos' else
       QBolsat26.Caption := '****';
   if (DM2.BolsaMCONTT27.Value <> 0) then QBolsat27.Caption := '27% - '+DM2.BolsaMCONTT27.Text+'-Alunos' else
       QBolsat27.Caption := '****';
   if (DM2.BolsaMCONTT28.Value <> 0) then QBolsat28.Caption := '28% - '+DM2.BolsaMCONTT28.Text+'-Alunos' else
       QBolsat28.Caption := '****';
   if (DM2.BolsaMCONTT29.Value <> 0) then QBolsat29.Caption := '29% - '+DM2.BolsaMCONTT29.Text+'-Alunos' else
       QBolsat29.Caption := '****';
   if (DM2.BolsaMCONTT30.Value <> 0) then QBolsat30.Caption := '30% - '+DM2.BolsaMCONTT30.Text+'-Alunos' else
       QBolsat30.Caption := '****';
   if (DM2.BolsaMCONTT31.Value <> 0) then QBolsat31.Caption := '31% - '+DM2.BolsaMCONTT31.Text+'-Alunos' else
       QBolsat31.Caption := '****';
   if (DM2.BolsaMCONTT32.Value <> 0) then QBolsat32.Caption := '32% - '+DM2.BolsaMCONTT32.Text+'-Alunos' else
       QBolsat32.Caption := '****';
   if (DM2.BolsaMCONTT33.Value <> 0) then QBolsat33.Caption := '33% - '+DM2.BolsaMCONTT33.Text+'-Alunos' else
       QBolsat33.Caption := '****';
   if (DM2.BolsaMCONTT34.Value <> 0) then QBolsat34.Caption := '34% - '+DM2.BolsaMCONTT34.Text+'-Alunos' else
       QBolsat34.Caption := '****';
   if (DM2.BolsaMCONTT35.Value <> 0) then QBolsat35.Caption := '35% - '+DM2.BolsaMCONTT35.Text+'-Alunos' else
       QBolsat35.Caption := '****';
   if (DM2.BolsaMCONTT36.Value <> 0) then QBolsat36.Caption := '36% - '+DM2.BolsaMCONTT36.Text+'-Alunos' else
       QBolsat36.Caption := '****';
   if (DM2.BolsaMCONTT37.Value <> 0) then QBolsat37.Caption := '37% - '+DM2.BolsaMCONTT37.Text+'-Alunos' else
       QBolsat37.Caption := '****';
   if (DM2.BolsaMCONTT38.Value <> 0) then QBolsat38.Caption := '38% - '+DM2.BolsaMCONTT38.Text+'-Alunos' else
       QBolsat38.Caption := '****';
   if (DM2.BolsaMCONTT39.Value <> 0) then QBolsat39.Caption := '39% - '+DM2.BolsaMCONTT39.Text+'-Alunos' else
       QBolsat39.Caption := '****';
   if (DM2.BolsaMCONTT40.Value <> 0) then QBolsat40.Caption := '40% - '+DM2.BolsaMCONTT40.Text+'-Alunos' else
       QBolsat40.Caption := '****';
   if (DM2.BolsaMCONTT41.Value <> 0) then QBolsat41.Caption := '41% - '+DM2.BolsaMCONTT41.Text+'-Alunos' else
       QBolsat41.Caption := '****';
   if (DM2.BolsaMCONTT42.Value <> 0) then QBolsat42.Caption := '42% - '+DM2.BolsaMCONTT42.Text+'-Alunos' else
       QBolsat42.Caption := '****';
   if (DM2.BolsaMCONTT43.Value <> 0) then QBolsat43.Caption := '43% - '+DM2.BolsaMCONTT43.Text+'-Alunos' else
       QBolsat43.Caption := '****';
   if (DM2.BolsaMCONTT44.Value <> 0) then QBolsat44.Caption := '44% - '+DM2.BolsaMCONTT44.Text+'-Alunos' else
       QBolsat44.Caption := '****';
   if (DM2.BolsaMCONTT45.Value <> 0) then QBolsat45.Caption := '45% - '+DM2.BolsaMCONTT45.Text+'-Alunos' else
       QBolsat45.Caption := '****';
   if (DM2.BolsaMCONTT46.Value <> 0) then QBolsat46.Caption := '46% - '+DM2.BolsaMCONTT46.Text+'-Alunos' else
       QBolsat46.Caption := '****';
   if (DM2.BolsaMCONTT47.Value <> 0) then QBolsat47.Caption := '47% - '+DM2.BolsaMCONTT47.Text+'-Alunos' else
       QBolsat47.Caption := '****';
   if (DM2.BolsaMCONTT48.Value <> 0) then QBolsat48.Caption := '48% - '+DM2.BolsaMCONTT48.Text+'-Alunos' else
       QBolsat48.Caption := '****';
   if (DM2.BolsaMCONTT49.Value <> 0) then QBolsat49.Caption := '49% - '+DM2.BolsaMCONTT49.Text+'-Alunos' else
       QBolsat49.Caption := '****';
   if (DM2.BolsaMCONTT50.Value <> 0) then QBolsat50.Caption := '50% - '+DM2.BolsaMCONTT50.Text+'-Alunos' else
       QBolsat50.Caption := '****';
   if (DM2.BolsaMCONTT51.Value <> 0) then QBolsat51.Caption := '51% - '+DM2.BolsaMCONTT51.Text+'-Alunos' else
       QBolsat51.Caption := '****';
   if (DM2.BolsaMCONTT52.Value <> 0) then QBolsat52.Caption := '52% - '+DM2.BolsaMCONTT52.Text+'-Alunos' else
       QBolsat52.Caption := '****';
   if (DM2.BolsaMCONTT53.Value <> 0) then QBolsat53.Caption := '53% - '+DM2.BolsaMCONTT53.Text+'-Alunos' else
       QBolsat53.Caption := '****';
   if (DM2.BolsaMCONTT54.Value <> 0) then QBolsat54.Caption := '54% - '+DM2.BolsaMCONTT54.Text+'-Alunos' else
       QBolsat54.Caption := '****';
   if (DM2.BolsaMCONTT55.Value <> 0) then QBolsat55.Caption := '55% - '+DM2.BolsaMCONTT55.Text+'-Alunos' else
       QBolsat55.Caption := '****';
   if (DM2.BolsaMCONTT56.Value <> 0) then QBolsat56.Caption := '56% - '+DM2.BolsaMCONTT56.Text+'-Alunos' else
       QBolsat56.Caption := '****';
   if (DM2.BolsaMCONTT57.Value <> 0) then QBolsat57.Caption := '57% - '+DM2.BolsaMCONTT57.Text+'-Alunos' else
       QBolsat57.Caption := '****';
   if (DM2.BolsaMCONTT58.Value <> 0) then QBolsat58.Caption := '58% - '+DM2.BolsaMCONTT58.Text+'-Alunos' else
       QBolsat58.Caption := '****';
   if (DM2.BolsaMCONTT59.Value <> 0) then QBolsat59.Caption := '59% - '+DM2.BolsaMCONTT59.Text+'-Alunos' else
       QBolsat59.Caption := '****';
   if (DM2.BolsaMCONTT60.Value <> 0) then QBolsat60.Caption := '60% - '+DM2.BolsaMCONTT60.Text+'-Alunos' else
       QBolsat60.Caption := '****';
   if (DM2.BolsaMCONTT61.Value <> 0) then QBolsat61.Caption := '61% - '+DM2.BolsaMCONTT61.Text+'-Alunos' else
       QBolsat61.Caption := '****';
   if (DM2.BolsaMCONTT62.Value <> 0) then QBolsat62.Caption := '62% - '+DM2.BolsaMCONTT62.Text+'-Alunos' else
       QBolsat62.Caption := '****';
   if (DM2.BolsaMCONTT63.Value <> 0) then QBolsat63.Caption := '63% - '+DM2.BolsaMCONTT63.Text+'-Alunos' else
       QBolsat63.Caption := '****';
   if (DM2.BolsaMCONTT64.Value <> 0) then QBolsat64.Caption := '64% - '+DM2.BolsaMCONTT64.Text+'-Alunos' else
       QBolsat64.Caption := '****';
   if (DM2.BolsaMCONTT65.Value <> 0) then QBolsat65.Caption := '65% - '+DM2.BolsaMCONTT65.Text+'-Alunos' else
       QBolsat65.Caption := '****';
   if (DM2.BolsaMCONTT66.Value <> 0) then QBolsat66.Caption := '66% - '+DM2.BolsaMCONTT66.Text+'-Alunos' else
       QBolsat66.Caption := '****';
   if (DM2.BolsaMCONTT67.Value <> 0) then QBolsat67.Caption := '67% - '+DM2.BolsaMCONTT67.Text+'-Alunos' else
       QBolsat67.Caption := '****';
   if (DM2.BolsaMCONTT68.Value <> 0) then QBolsat68.Caption := '68% - '+DM2.BolsaMCONTT68.Text+'-Alunos' else
       QBolsat68.Caption := '****';
   if (DM2.BolsaMCONTT69.Value <> 0) then QBolsat69.Caption := '69% - '+DM2.BolsaMCONTT69.Text+'-Alunos' else
       QBolsat69.Caption := '****';
   if (DM2.BolsaMCONTT70.Value <> 0) then QBolsat70.Caption := '70% - '+DM2.BolsaMCONTT70.Text+'-Alunos' else
       QBolsat70.Caption := '****';
   if (DM2.BolsaMCONTT71.Value <> 0) then QBolsat71.Caption := '71% - '+DM2.BolsaMCONTT71.Text+'-Alunos' else
       QBolsat71.Caption := '****';
   if (DM2.BolsaMCONTT72.Value <> 0) then QBolsat72.Caption := '72% - '+DM2.BolsaMCONTT72.Text+'-Alunos' else
       QBolsat72.Caption := '****';
   if (DM2.BolsaMCONTT73.Value <> 0) then QBolsat73.Caption := '73% - '+DM2.BolsaMCONTT73.Text+'-Alunos' else
       QBolsat73.Caption := '****';
   if (DM2.BolsaMCONTT74.Value <> 0) then QBolsat74.Caption := '74% - '+DM2.BolsaMCONTT74.Text+'-Alunos' else
       QBolsat74.Caption := '****';
   if (DM2.BolsaMCONTT75.Value <> 0) then QBolsat75.Caption := '75% - '+DM2.BolsaMCONTT75.Text+'-Alunos' else
       QBolsat75.Caption := '****';
   if (DM2.BolsaMCONTT76.Value <> 0) then QBolsat76.Caption := '76% - '+DM2.BolsaMCONTT76.Text+'-Alunos' else
       QBolsat76.Caption := '****';
   if (DM2.BolsaMCONTT77.Value <> 0) then QBolsat77.Caption := '77% - '+DM2.BolsaMCONTT77.Text+'-Alunos' else
       QBolsat77.Caption := '****';
   if (DM2.BolsaMCONTT78.Value <> 0) then QBolsat78.Caption := '78% - '+DM2.BolsaMCONTT78.Text+'-Alunos' else
       QBolsat78.Caption := '****';
   if (DM2.BolsaMCONTT79.Value <> 0) then QBolsat79.Caption := '79% - '+DM2.BolsaMCONTT79.Text+'-Alunos' else
       QBolsat79.Caption := '****';
   if (DM2.BolsaMCONTT80.Value <> 0) then QBolsat80.Caption := '80% - '+DM2.BolsaMCONTT80.Text+'-Alunos' else
       QBolsat80.Caption := '****';
   if (DM2.BolsaMCONTT81.Value <> 0) then QBolsat81.Caption := '81% - '+DM2.BolsaMCONTT81.Text+'-Alunos' else
       QBolsat81.Caption := '****';
   if (DM2.BolsaMCONTT82.Value <> 0) then QBolsat82.Caption := '82% - '+DM2.BolsaMCONTT82.Text+'-Alunos' else
       QBolsat82.Caption := '****';
   if (DM2.BolsaMCONTT83.Value <> 0) then QBolsat83.Caption := '83% - '+DM2.BolsaMCONTT83.Text+'-Alunos' else
       QBolsat83.Caption := '****';
   if (DM2.BolsaMCONTT84.Value <> 0) then QBolsat84.Caption := '84% - '+DM2.BolsaMCONTT84.Text+'-Alunos' else
       QBolsat84.Caption := '****';
   if (DM2.BolsaMCONTT85.Value <> 0) then QBolsat85.Caption := '85% - '+DM2.BolsaMCONTT85.Text+'-Alunos' else
       QBolsat85.Caption := '****';
   if (DM2.BolsaMCONTT86.Value <> 0) then QBolsat86.Caption := '86% - '+DM2.BolsaMCONTT86.Text+'-Alunos' else
       QBolsat86.Caption := '****';
   if (DM2.BolsaMCONTT87.Value <> 0) then QBolsat87.Caption := '87% - '+DM2.BolsaMCONTT87.Text+'-Alunos' else
       QBolsat87.Caption := '****';
   if (DM2.BolsaMCONTT88.Value <> 0) then QBolsat88.Caption := '88% - '+DM2.BolsaMCONTT88.Text+'-Alunos' else
       QBolsat88.Caption := '****';
   if (DM2.BolsaMCONTT89.Value <> 0) then QBolsat89.Caption := '89% - '+DM2.BolsaMCONTT89.Text+'-Alunos' else
       QBolsat89.Caption := '****';
   if (DM2.BolsaMCONTT90.Value <> 0) then QBolsat90.Caption := '90% - '+DM2.BolsaMCONTT90.Text+'-Alunos' else
       QBolsat90.Caption := '****';
   if (DM2.BolsaMCONTT91.Value <> 0) then QBolsat91.Caption := '91% - '+DM2.BolsaMCONTT91.Text+'-Alunos' else
       QBolsat91.Caption := '****';
   if (DM2.BolsaMCONTT92.Value <> 0) then QBolsat92.Caption := '92% - '+DM2.BolsaMCONTT92.Text+'-Alunos' else
       QBolsat92.Caption := '****';
   if (DM2.BolsaMCONTT93.Value <> 0) then QBolsat93.Caption := '93% - '+DM2.BolsaMCONTT93.Text+'-Alunos' else
       QBolsat93.Caption := '****';
   if (DM2.BolsaMCONTT94.Value <> 0) then QBolsat94.Caption := '94% - '+DM2.BolsaMCONTT94.Text+'-Alunos' else
       QBolsat94.Caption := '****';
   if (DM2.BolsaMCONTT95.Value <> 0) then QBolsat95.Caption := '95% - '+DM2.BolsaMCONTT95.Text+'-Alunos' else
       QBolsat95.Caption := '****';
   if (DM2.BolsaMCONTT96.Value <> 0) then QBolsat96.Caption := '96% - '+DM2.BolsaMCONTT96.Text+'-Alunos' else
       QBolsat96.Caption := '****';
   if (DM2.BolsaMCONTT97.Value <> 0) then QBolsat97.Caption := '97% - '+DM2.BolsaMCONTT97.Text+'-Alunos' else
       QBolsat97.Caption := '****';
   if (DM2.BolsaMCONTT98.Value <> 0) then QBolsat98.Caption := '98% - '+DM2.BolsaMCONTT98.Text+'-Alunos' else
       QBolsat98.Caption := '****';
   if (DM2.BolsaMCONTT99.Value <> 0) then QBolsat99.Caption := '99% - '+DM2.BolsaMCONTT99.Text+'-Alunos' else
       QBolsat99.Caption := '****';
   if (DM2.BolsaMCONTT100.Value <> 0) then QBolsat100.Caption := '100% - '+DM2.BolsaMCONTT100.Text+'-Alunos' else
       QBolsat100.Caption := '****';



end;


procedure TLst_BolsaMQR.TitleBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   Periodo.Caption := 'Periodo de: '+Bolsas.DInicial.Text+' a '+Bolsas.DFinal.Text;
end;

end.
