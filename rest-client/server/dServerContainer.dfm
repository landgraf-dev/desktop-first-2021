object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 237
  Width = 325
  object XDataServer1: TXDataServer
    BaseUrl = 'http://+:2001/tms/xdata'
    EntitySetPermissions = <>
    SwaggerOptions.Enabled = True
    SwaggerUIOptions.Enabled = True
    Left = 64
    Top = 64
  end
end
