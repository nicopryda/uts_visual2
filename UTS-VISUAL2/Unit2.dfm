object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 192
  Top = 125
  Height = 150
  Width = 215
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 152
    Top = 32
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    HostName = 'localhost'
    Port = 3306
    Database = 'penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\ASUS\Downloads\libmysql.dll'
    Left = 24
    Top = 32
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from satuan')
    Params = <>
    Left = 88
    Top = 32
  end
end
