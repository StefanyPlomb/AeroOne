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
    Left = 64
    Top = 144
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 520
    Top = 136
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 520
    Top = 56
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'C:\AeroOne\Win32\lib\libpq.dll'
    Left = 120
    Top = 24
  end
  object FDQueryFuncionarios: TFDQuery
    Connection = FDConnection1
    Left = 512
    Top = 384
  end
  object DataSourceFuncionarios: TDataSource
    DataSet = FDQueryFuncionarios
    Left = 504
    Top = 296
  end
end
