object DataModuleConn: TDataModuleConn
  Height = 480
  Width = 640
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=AeroOne'
      'User_Name=postgres'
      'Password=root'
      'Server=localhost'
      'DriverID=PG')
    LoginPrompt = False
    Left = 34
    Top = 8
  end
  object FDQueryLogin: TFDQuery
    Connection = FDConnection
    Left = 558
    Top = 16
  end
  object DataSourceLogin: TDataSource
    DataSet = FDQueryLogin
    Left = 558
    Top = 77
  end
  object FDPhysPgDriverLink: TFDPhysPgDriverLink
    VendorLib = 'C:\projects\stefany\AeroOne\Win32\lib\libpq.dll'
    Left = 132
    Top = 8
  end
  object FDQueryFuncionario: TFDQuery
    Connection = FDConnection
    Left = 426
    Top = 160
  end
  object DataSourceFuncionario: TDataSource
    DataSet = FDQueryFuncionario
    Left = 423
    Top = 80
  end
  object FDQueryVoos: TFDQuery
    Connection = FDConnection
    Left = 283
    Top = 160
  end
  object FDQueryQuantidade: TFDQuery
    Connection = FDConnection
    Left = 333
    Top = 8
  end
  object DataSourceVoos: TDataSource
    DataSet = FDQueryVoos
    Left = 311
    Top = 80
  end
  object DataSourceEndereco: TDataSource
    DataSet = FDQueryEndereco
    Left = 558
    Top = 256
  end
  object FDQueryEndereco: TFDQuery
    Connection = FDConnection
    Left = 558
    Top = 312
  end
  object FDQueryGestor: TFDQuery
    Connection = FDConnection
    Left = 232
    Top = 8
  end
  object DataSourceAeronave: TDataSource
    DataSet = FDQueryAeronave
    Left = 560
    Top = 136
  end
  object FDQueryAeronave: TFDQuery
    Connection = FDConnection
    Left = 560
    Top = 200
  end
  object DataSourceVoosAtribuidos: TDataSource
    DataSet = FDQueryVoosAtribuidos
    Left = 191
    Top = 80
  end
  object DataSourceVoosDisponiveis: TDataSource
    DataSet = FDQueryVoosDisponiveis
    Left = 40
    Top = 80
  end
  object FDQueryVoosAtribuidos: TFDQuery
    Connection = FDConnection
    Left = 177
    Top = 160
  end
  object FDQueryVoosDisponiveis: TFDQuery
    Connection = FDConnection
    Left = 40
    Top = 160
  end
end
