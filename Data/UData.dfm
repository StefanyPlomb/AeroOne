object DataModule1: TDataModule1
  Height = 480
  Width = 640
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=AeroOne'
      'User_Name=postgres'
      'Password=root'
      'Server=localhost'
      'DriverID=PG')
    Left = 122
    Top = 16
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 526
    Top = 104
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 526
    Top = 37
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'C:\AeroOne\Win32\lib\libpq.dll'
    Left = 24
    Top = 18
  end
  object FDQueryFuncionarios: TFDQuery
    Connection = FDConnection1
    Left = 32
    Top = 251
  end
  object DataSourceFuncionarios: TDataSource
    DataSet = FDQueryFuncionarios
    Left = 24
    Top = 259
  end
  object FDQueryVoos: TFDQuery
    Connection = FDConnection1
    Left = 72
    Top = 384
  end
  object DataSourceAtribuidos: TDataSource
    DataSet = FDQueryAtribuidos
    Left = 45
    Top = 152
  end
  object FDQueryAtribuidos: TFDQuery
    Connection = FDConnection1
    Left = 38
    Top = 150
  end
  object FDQueryQuantidade: TFDQuery
    Connection = FDConnection1
    Left = 208
    Top = 160
  end
  object DataSourceVoos: TDataSource
    DataSet = FDQueryVoos
    Left = 24
    Top = 376
  end
  object DataSourceEndereco: TDataSource
    DataSet = FDQueryEndereco
    Left = 272
    Top = 352
  end
  object FDQueryEndereco: TFDQuery
    Connection = FDConnection1
    Left = 280
    Top = 368
  end
end
