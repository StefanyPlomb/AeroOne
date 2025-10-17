unit ULiberarCheckin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls;

type
  TFormLiberarCheckin = class(TForm)
    Panel5: TPanel;
    Label6: TLabel;
    DBGrid1: TDBGrid;
    Button2: TButton;
    Button3: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLiberarCheckin: TFormLiberarCheckin;

implementation

{$R *.dfm}

end.
