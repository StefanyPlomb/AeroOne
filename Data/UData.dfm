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
    Left = 120
    Top = 120
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 440
    Top = 152
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 304
    Top = 128
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'C:\AeroOne\Win32\lib\libpq.dll'
    Left = 120
    Top = 232
  end
  object FDQueryFuncionarios: TFDQuery
    Connection = FDConnection1
    Left = 328
    Top = 264
  end
end
