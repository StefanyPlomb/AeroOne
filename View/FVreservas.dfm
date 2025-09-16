object Form7: TForm7
  Left = 0
  Top = 0
  Caption = 'Form7'
  ClientHeight = 346
  ClientWidth = 811
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 811
    Height = 346
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = -8
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 127
      Height = 35
      Caption = 'Meus Voos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11556864
      Font.Height = -25
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 18
      Top = 41
      Width = 125
      Height = 20
      Caption = 'Gerencie seus voos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 552
      Top = 27
      Width = 105
      Height = 34
      Caption = 'Alterar '
      Color = 8404992
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 41984
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object Panel3: TPanel
      Left = 680
      Top = 27
      Width = 97
      Height = 34
      Caption = 'Excluir '
      Color = 8404992
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4079359
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
    end
    object StringGrid1: TStringGrid
      Left = 24
      Top = 67
      Width = 753
      Height = 270
      ColCount = 15
      Constraints.MinHeight = 100
      Constraints.MinWidth = 100
      Ctl3D = False
      RowCount = 9
      ParentCtl3D = False
      TabOrder = 2
    end
  end
end
