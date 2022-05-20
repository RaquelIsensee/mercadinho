object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 430
  Width = 540
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=mercado'
      'User_Name=root'
      'Password=root'
      'Server=localhost'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 88
    Top = 88
  end
  object FDTransaction1: TFDTransaction
    Connection = FDConnection1
    Left = 200
    Top = 88
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 128
    Top = 176
  end
end
