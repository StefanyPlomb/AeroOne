unit URelatorioTempoDestino;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Vcl.Imaging.pngimage, UConn;

type
  TFormRelatorioTempodeVoo = class(TForm)
    RLReportMain: TRLReport;
    RLBandHeader: TRLBand;
    RLDrawTitle: TRLDraw;
    RLLabelTtitleAeroOne: TRLLabel;
    RLLabelTitleRelatorio: TRLLabel;
    RLGroupCenter: TRLGroup;
    RLBandHeaderGroup: TRLBand;
    RLDBTextOrigem: TRLDBText;
    RLBandDetailGroup: TRLBand;
    RLDBTextOrigemDetail: TRLDBText;
    RLImage1: TRLImage;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLBand1: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel3: TRLLabel;
    RLBandFooter: TRLBand;
    RLSystemInfoDataFooter: TRLSystemInfo;
    RLImageLogoFooter: TRLImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioTempodeVoo: TFormRelatorioTempodeVoo;

implementation

{$R *.dfm}

end.
