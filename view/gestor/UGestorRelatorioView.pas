unit UGestorRelatorioView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.ExtCtrls, Vcl.StdCtrls,
  Data.DB, Vcl.Imaging.pngimage, Vcl.DBGrids, Vcl.WinXPanels, UConn, URelatorioOrigem;

type
  TFormGestorRelatorio = class(TForm)
    pnlMain: TPanel;
    scrollBox: TScrollBox;
    pnlDivBottom: TPanel;
    pnlRelatorioQtdVoosOrigemCanceladosPorCidade: TPanel;
    pnlRelatorioQtdVoosOrigemPorCidade: TPanel;
    pnlRelatorioTempoVoos: TPanel;
    procedure pnlRelatorioQtdVoosOrigemPorCidadeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGestorRelatorio: TFormGestorRelatorio;

implementation

{$R *.dfm}

procedure TFormGestorRelatorio.pnlRelatorioQtdVoosOrigemPorCidadeClick(
  Sender: TObject);
begin
  DataModuleConn.FDQueryRelatorioOrigem.Close;
  DataModuleConn.FDQueryRelatorioOrigem.Open;

FormRelatorioOrigem.RLReportMain.Prepare;
 FormRelatorioOrigem.RLReportMain.Preview;
end;

end.
