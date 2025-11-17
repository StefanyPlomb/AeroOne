unit UConn;

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
  TDataModuleConn = class(TDataModule)
    FDConnection: TFDConnection;
    FDQueryLogin: TFDQuery;
    DataSourceLogin: TDataSource;
    FDPhysPgDriverLink: TFDPhysPgDriverLink;
    FDQueryFuncionario: TFDQuery;
    DataSourceFuncionario: TDataSource;
    FDQueryVoos: TFDQuery;
    FDQueryQuantidade: TFDQuery;
    DataSourceVoos: TDataSource;
    DataSourceEndereco: TDataSource;
    FDQueryEndereco: TFDQuery;
    FDQueryGestor: TFDQuery;
    DataSourceAeronave: TDataSource;
    FDQueryAeronave: TFDQuery;
    DataSourceVoosAtribuidos: TDataSource;
    DataSourceVoosDisponiveis: TDataSource;
    FDQueryVoosAtribuidos: TFDQuery;
    FDQueryVoosDisponiveis: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleConn: TDataModuleConn;

implementation

{$R *.dfm}

procedure TDataModuleConn.DataModuleCreate(Sender: TObject);
begin
  FDConnection.Connected := True;
end;

end.
