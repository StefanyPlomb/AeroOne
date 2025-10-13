unit UVoosAeroMo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Imaging.pngimage, Vcl.Grids, Vcl.DBGrids;

type
  TFormVoosAeroMo = class(TForm)
    PanelCentral_AeroMo: TPanel;
    LabelSubtituloVoo: TLabel;
    LabelTituloVoo: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    Label4: TLabel;
    DBGrid2: TDBGrid;
    Edit1: TEdit;
    Image1: TImage;
    ButBuscar_Aeromo: TPanel;
    ButConecta: TPanel;
    ButDesconecta: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVoosAeroMo: TFormVoosAeroMo;

implementation

{$R *.dfm}

end.
