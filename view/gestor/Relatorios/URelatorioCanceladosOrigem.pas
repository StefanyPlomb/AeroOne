unit URelatorioCanceladosOrigem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Vcl.Imaging.pngimage;

type
  TFormRelatorioCanceladoOrigem = class(TForm)
    RLReportMain: TRLReport;
    RLBandHeader: TRLBand;
    RLDrawTitle: TRLDraw;
    RLLabelTtitleAeroOne: TRLLabel;
    RLLabelTitleRelatorio: TRLLabel;
    RLDrawLineTitle: TRLDraw;
    RLGroupCenter: TRLGroup;
    RLBandHeaderGroup: TRLBand;
    RLDBTextOrigem: TRLDBText;
    RLBandDetailGroup: TRLBand;
    RLDBTextOrigemDetail: TRLDBText;
    RLImage1: TRLImage;
    RLDBText1: TRLDBText;
    RLBandFooter: TRLBand;
    RLSystemInfoDataFooter: TRLSystemInfo;
    RLImageLogoFooter: TRLImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioCanceladoOrigem: TFormRelatorioCanceladoOrigem;

implementation

{$R *.dfm}

end.
