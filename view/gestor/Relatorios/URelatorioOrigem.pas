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
    RLBandDetailGroup: TRLBand;
    RLDBTextOrigemDetail: TRLDBText;
    RLImage1: TRLImage;
    RLDBText1: TRLDBText;
    RLDBTextOrigem: TRLDBText;
    RLDBText2: TRLDBText;
    RLBand1: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel3: TRLLabel;
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
