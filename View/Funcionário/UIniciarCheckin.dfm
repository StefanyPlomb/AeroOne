object FormCheckin_Iniciado: TFormCheckin_Iniciado
  Left = 0
  Top = 0
  Caption = 'FormCheckin_Iniciado'
  ClientHeight = 596
  ClientWidth = 750
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
    Width = 750
    Height = 596
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = -8
    ExplicitTop = -8
    ExplicitHeight = 598
    object LabelSubtituloCheck: TLabel
      Left = 18
      Top = 52
      Width = 16
      Height = 20
      Caption = 'SP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LabelTituloCheck: TLabel
      Left = 10
      Top = 11
      Width = 119
      Height = 35
      Caption = 'Check-in -'
      Color = 5581568
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11556864
      Font.Height = -25
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label1: TLabel
      Left = 135
      Top = 11
      Width = 77
      Height = 35
      Caption = 'AZB67'
      Color = 5581568
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11556864
      Font.Height = -25
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 82
      Top = 52
      Width = 16
      Height = 20
      Caption = 'SP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 48
      Top = 45
      Width = 17
      Height = 28
      Caption = #8594
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 123
      Top = 52
      Width = 39
      Height = 20
      Caption = '14: 00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 112
      Top = 45
      Width = 5
      Height = 28
      Caption = '|'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 48
      Top = 103
      Width = 162
      Height = 81
      TabOrder = 0
    end
    object Panel3: TPanel
      Left = 279
      Top = 103
      Width = 154
      Height = 81
      TabOrder = 1
    end
    object Panel4: TPanel
      Left = 483
      Top = 105
      Width = 166
      Height = 77
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 18
      Top = 218
      Width = 303
      Height = 33
      TabOrder = 3
      Text = 'Edit1'
    end
    object Button1: TButton
      Left = 351
      Top = 209
      Width = 49
      Height = 33
      Caption = #55357#56590
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Panel5: TPanel
      Left = 0
      Top = 257
      Width = 750
      Height = 339
      Color = clWhite
      ParentBackground = False
      TabOrder = 5
      object Label6: TLabel
        Left = 18
        Top = 35
        Width = 231
        Height = 35
        Caption = 'Lista de Passageiros'
        Color = 5581568
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11556864
        Font.Height = -25
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBGrid1: TDBGrid
        Left = 18
        Top = 113
        Width = 415
        Height = 161
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object Button2: TButton
        Left = 448
        Top = 240
        Width = 113
        Height = 33
        Caption = 'Mapa de Acentos'
        TabOrder = 1
      end
      object Button3: TButton
        Left = 448
        Top = 184
        Width = 113
        Height = 33
        Caption = 'Liberar'
        TabOrder = 2
      end
    end
  end
end
