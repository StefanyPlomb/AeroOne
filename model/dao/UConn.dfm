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
    Connected = True
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
    VendorLib = 'C:\AeroOne\Win32\lib\libpq.dll'
    Left = 144
    Top = 8
  end
  object FDQueryFuncionario: TFDQuery
    Connection = FDConnection
    Left = 417
    Top = 136
  end
  object DataSourceFuncionario: TDataSource
    DataSet = FDQueryFuncionario
    Left = 416
    Top = 83
  end
  object FDQueryVoos: TFDQuery
    Connection = FDConnection
    Left = 416
    Top = 256
  end
  object DataSourceAtribuidos: TDataSource
    DataSet = FDQueryAtribuidos
    Left = 557
    Top = 136
  end
  object FDQueryAtribuidos: TFDQuery
    Connection = FDConnection
    Left = 558
    Top = 198
  end
  object FDQueryQuantidade: TFDQuery
    Connection = FDConnection
    Left = 416
    Top = 16
  end
  object DataSourceVoos: TDataSource
    DataSet = FDQueryVoos
    Left = 416
    Top = 199
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
    Left = 288
    Top = 16
  end
end
