unit UGestorRelatorioView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.ExtCtrls, Vcl.StdCtrls,
  Data.DB, Vcl.Imaging.pngimage, Vcl.DBGrids, Vcl.WinXPanels;

type
  TFormGestorRelatorio = class(TForm)
    pnlMain: TPanel;
    scrollBox: TScrollBox;
    pnlDivBottom: TPanel;
    pnlRelatorioQtdVoosOrigemCanceladosPorCidade: TPanel;
    pnlRelatorioQtdVoosOrigemPorCidade: TPanel;
    pnlRelatorioTempoVoos: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGestorRelatorio: TFormGestorRelatorio;

implementation

{$R *.dfm}

end.
