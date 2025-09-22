object DataModule1: TDataModule1
  Height = 480
  Width = 640
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=PG')
    Left = 192
    Top = 160
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 408
    Top = 144
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 296
    Top = 144
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'C:\AeroOne\Data\lib\libpq.dll'
    Left = 216
    Top = 288
  end
end
