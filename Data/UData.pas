unit UData;

interface

uses
  System.SysUtils, System.Classes, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Phys.PG, FireDAC.Phys.PGDef;

type
  TDataModule1 = class(TDataModule)
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    FDQueryFuncionarios: TFDQuery;
    DataSourceFuncionarios: TDataSource;
    DataSourceVoos: TDataSource;
    FDQueryVoos: TFDQuery;
    DataSourceAtribuidos: TDataSource;
    FDQueryAtribuidos: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
     UsuarioLogadoID: Integer;
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation



{$R *.dfm}

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
  FDConnection1.Connected := True;
  DataSourceFuncionarios.DataSet := FDQueryFuncionarios;
   DataSourceVoos.DataSet := FDQueryVoos;
end;


end.

