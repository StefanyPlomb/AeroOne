object DataModuleConn: TDataModuleConn
  Height = 600
  Width = 800
  PixelsPerInch = 120
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=AeroOne'
      'User_Name=postgres'
      'Password=root'
      'Server=localhost'
      'DriverID=PG')
    Connected = True
    LoginPrompt = False
    Left = 43
    Top = 10
  end
  object FDQueryLogin: TFDQuery
    Connection = FDConnection
    Left = 698
    Top = 20
  end
  object DataSourceLogin: TDataSource
    DataSet = FDQueryLogin
    Left = 698
    Top = 96
  end
  object FDPhysPgDriverLink: TFDPhysPgDriverLink
    VendorLib = 'C:\AeroOne\Win32\lib\libpq.dll'
    Left = 165
    Top = 10
  end
  object FDQueryFuncionario: TFDQuery
    Connection = FDConnection
    Left = 533
    Top = 200
  end
  object DataSourceFuncionario: TDataSource
    DataSet = FDQueryFuncionario
    Left = 529
    Top = 100
  end
  object FDQueryVoos: TFDQuery
    Connection = FDConnection
    Left = 354
    Top = 200
  end
  object FDQueryQuantidade: TFDQuery
    Connection = FDConnection
    Left = 416
    Top = 10
  end
  object DataSourceVoos: TDataSource
    DataSet = FDQueryVoos
    Left = 389
    Top = 100
  end
  object DataSourceEndereco: TDataSource
    DataSet = FDQueryEndereco
    Left = 698
    Top = 320
  end
  object FDQueryEndereco: TFDQuery
    Connection = FDConnection
    Left = 698
    Top = 390
  end
  object FDQueryGestor: TFDQuery
    Connection = FDConnection
    Left = 290
    Top = 10
  end
  object DataSourceAeronave: TDataSource
    DataSet = FDQueryAeronave
    Left = 700
    Top = 170
  end
  object FDQueryAeronave: TFDQuery
    Connection = FDConnection
    Left = 700
    Top = 250
  end
  object DataSourceVoosAtribuidos: TDataSource
    DataSet = FDQueryVoosAtribuidos
    Left = 239
    Top = 100
  end
  object DataSourceVoosDisponiveis: TDataSource
    DataSet = FDQueryVoosDisponiveis
    Left = 50
    Top = 100
  end
  object FDQueryVoosAtribuidos: TFDQuery
    Connection = FDConnection
    Left = 221
    Top = 200
  end
  object FDQueryVoosDisponiveis: TFDQuery
    Connection = FDConnection
    Left = 50
    Top = 200
  end
  object FDQueryRelatorioOrigem: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT'
      '  TRIM(UPPER(origem))   AS origem,'
      '  TRIM(UPPER(destino))  AS destino,'
      '  COUNT(*) AS total_voos'
      'FROM voos'
      'GROUP BY'
      '  TRIM(UPPER(origem)),'
      '  TRIM(UPPER(destino))'
      'ORDER BY'
      '  TRIM(UPPER(origem)),'
      '  TRIM(UPPER(destino));')
    Left = 93
    Top = 470
  end
  object DataSourceRelatorioOrigem: TDataSource
    DataSet = FDQueryRelatorioOrigem
    Left = 89
    Top = 370
  end
  object FDQueryRelatorioCancelados: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT'
      '    origem,'
      '    destino,'
      '    COUNT(*) AS total_cancelamentos'
      'FROM voos'
      'WHERE status = '#39'C'#39
      'GROUP BY origem, destino'
      'ORDER BY origem, total_cancelamentos DESC;')
    Left = 299
    Top = 478
  end
  object DataSourceRelatorioCancelados: TDataSource
    DataSet = FDQueryRelatorioCancelados
    Left = 302
    Top = 370
  end
  object FDQueryRelatorioTempo: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT'
      '  origem,'
      '  destino,'
      '  TO_CHAR('
      '    AVG(horaChegada::time - horaPartida::time),'
      '    '#39'HH24:MI'#39
      '  ) AS tempo_medio'
      'FROM voos'
      'WHERE'
      '    status = '#39'F'#39
      '    AND horaPartida ~ '#39'^[0-2][0-9]:[0-5][0-9](:[0-5][0-9])?$'#39
      '    AND horaChegada ~ '#39'^[0-2][0-9]:[0-5][0-9](:[0-5][0-9])?$'#39
      'GROUP BY origem, destino'
      'ORDER BY origem;'
      '')
    Left = 510
    Top = 478
  end
  object DataSourceRelatorioTempo: TDataSource
    DataSet = FDQueryRelatorioTempo
    Left = 513
    Top = 370
  end
end
