object FormDash: TFormDash
  Left = 0
  Top = 0
  Caption = 'FormDash'
  ClientHeight = 408
  ClientWidth = 830
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object PanelDash_AeroMo: TPanel
    Left = -9
    Top = -37
    Width = 842
    Height = 446
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object LabelDash_Aeromo: TLabel
      Left = 24
      Top = 44
      Width = 168
      Height = 45
      Caption = 'Dashboard'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -33
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object PanelDashCheck_Aeromo: TPanel
      Left = 392
      Top = 111
      Width = 337
      Height = 186
      Color = 8404992
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -10
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      object LabelDashCheck_Aeromo: TLabel
        Left = 56
        Top = 128
        Width = 227
        Height = 37
        Caption = 'Check-ins iniciados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -27
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object NumDashCheck_Aeromo: TLabel
        Left = 132
        Top = 49
        Width = 81
        Height = 62
        Caption = '345'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -47
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object PanelDashVoo_Aeromo: TPanel
      Left = 24
      Top = 110
      Width = 337
      Height = 187
      Color = 8404992
      ParentBackground = False
      TabOrder = 1
      object LabelDashVoo_Aeromo: TLabel
        Left = 72
        Top = 118
        Width = 194
        Height = 37
        Caption = 'Voos ativos hoje'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -27
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object NumDashVoo_Aeromo: TLabel
        Left = 144
        Top = 50
        Width = 54
        Height = 62
        Caption = '12'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -47
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
end
