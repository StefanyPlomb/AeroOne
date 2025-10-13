object DataModule1: TDataModule1
  Height = 600
  Width = 800
  PixelsPerInch = 120
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=AeroOne'
      'User_Name=postgres'
      'Password=root'
      'Server=localhost'
      'DriverID=PG')
    Left = 152
    Top = 20
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 658
    Top = 130
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 658
    Top = 46
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'C:\AeroOne\Win32\lib\libpq.dll'
    Left = 30
    Top = 22
  end
  object FDQueryFuncionarios: TFDQuery
    Connection = FDConnection1
    Left = 240
    Top = 304
  end
  object DataSourceFuncionarios: TDataSource
    DataSet = FDQueryFuncionarios
    Left = 70
    Top = 304
  end
  object DataSourceVoos: TDataSource
    DataSet = FDQueryVoos
    Left = 56
    Top = 392
  end
  object FDQueryVoos: TFDQuery
    Connection = FDConnection1
    Left = 240
    Top = 400
  end
end
