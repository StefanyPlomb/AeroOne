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
    Left = 32
    Top = 267
  end
  object FDQueryVoos: TFDQuery
    Connection = FDConnection1
    Left = 32
    Top = 368
  end
  object DataSourceAtribuidos: TDataSource
    DataSet = FDQueryAtribuidos
    Left = 45
    Top = 152
  end
  object FDQueryAtribuidos: TFDQuery
    Connection = FDConnection1
    Left = 46
    Top = 166
  end
  object FDQueryQuantidade: TFDQuery
    Connection = FDConnection1
    Left = 216
    Top = 152
  end
  object DataSourceVoos: TDataSource
    Left = 40
    Top = 400
  end
end
