object Form7: TForm7
  Left = 0
  Top = 0
  Caption = 'Form7'
  ClientHeight = 391
  ClientWidth = 608
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  DesignSize = (
    608
    391)
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 153
    Height = 25
    Caption = 'Get customers'
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 39
    Width = 592
    Height = 203
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button2: TButton
    Left = 167
    Top = 8
    Width = 169
    Height = 25
    Caption = 'Show selected customer name'
    TabOrder = 2
    OnClick = Button2Click
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 248
    Width = 592
    Height = 135
    Anchors = [akLeft, akRight, akBottom]
    DataSource = DataSource2
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    DataSet = AureliusDataset1
    Left = 192
    Top = 248
  end
  object AureliusDataset1: TAureliusDataset
    FieldDefs = <>
    CreateSelfField = False
    SubpropsDepth = 1
    Left = 192
    Top = 160
  end
  object DataSource2: TDataSource
    DataSet = AureliusDataset2
    Left = 288
    Top = 304
  end
  object AureliusDataset2: TAureliusDataset
    FieldDefs = <>
    Left = 368
    Top = 280
  end
end
