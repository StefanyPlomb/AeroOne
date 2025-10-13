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
    Left = 192
    Top = 243
  end
  object DataSourceFuncionarios: TDataSource
    DataSet = FDQueryFuncionarios
    Left = 56
    Top = 243
  end
  object DataSourceVoos: TDataSource
    DataSet = FDQueryVoos
    Left = 45
    Top = 314
  end
  object FDQueryVoos: TFDQuery
    Connection = FDConnection1
    Left = 192
    Top = 320
  end
end
