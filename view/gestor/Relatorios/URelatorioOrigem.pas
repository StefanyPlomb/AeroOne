unit URelatorioOrigem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Vcl.Imaging.pngimage;

type
  TFormRelatorioOrigem = class(TForm)
    RLReportMain: TRLReport;
    RLBandHeader: TRLBand;
    RLDrawTitle: TRLDraw;
    RLLabelTtitleAeroOne: TRLLabel;
    RLLabelTitleRelatorio: TRLLabel;
    RLGroupCenter: TRLGroup;
    RLBandHeaderGroup: TRLBand;
    RLBandFooter: TRLBand;
    RLSystemInfoDataFooter: TRLSystemInfo;
    RLImageLogoFooter: TRLImage;
    RLDBTextOrigem: TRLDBText;
    RLDrawLineTitle: TRLDraw;
    RLBandDetailGroup: TRLBand;
    RLDBTextOrigemDetail: TRLDBText;
    RLImage1: TRLImage;
    RLDBText1: TRLDBText;
    procedure RLReportMainBeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioOrigem: TFormRelatorioOrigem;

implementation

uses
  UConn;

{$R *.dfm}

procedure TFormRelatorioOrigem.RLReportMainBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  DataModuleConn.FDQueryRelatorioOrigem.Close;
  DataModuleConn.FDQueryRelatorioOrigem.Open;
end;

end.
