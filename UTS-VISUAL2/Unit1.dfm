object Form1: TForm1
  Left = 250
  Top = 158
  Width = 608
  Height = 392
  Caption = 'SATUAN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 88
    Top = 24
    Width = 34
    Height = 16
    Caption = 'NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 88
    Top = 64
    Width = 58
    Height = 16
    Caption = 'DISKRIPSI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 88
    Top = 272
    Width = 95
    Height = 16
    Caption = 'MASUKAN NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object e1: TEdit
    Left = 200
    Top = 16
    Width = 305
    Height = 21
    TabOrder = 0
  end
  object e2: TEdit
    Left = 200
    Top = 56
    Width = 305
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 200
    Top = 96
    Width = 65
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 280
    Top = 96
    Width = 65
    Height = 25
    Caption = 'EDIT'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 360
    Top = 96
    Width = 65
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 440
    Top = 96
    Width = 65
    Height = 25
    Caption = 'BATAL'
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 88
    Top = 136
    Width = 417
    Height = 120
    DataSource = DataModule2.DataSource1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object e3: TEdit
    Left = 200
    Top = 264
    Width = 305
    Height = 21
    TabOrder = 7
    OnChange = e3Change
  end
end
