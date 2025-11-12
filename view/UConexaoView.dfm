object FormConexao: TFormConexao
  Left = 0
  Top = 0
  Caption = 'FormConexao'
  ClientHeight = 637
  ClientWidth = 801
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWhite
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 801
    Height = 65
    Align = alTop
    Alignment = taLeftJustify
    Caption = '     Sistema AeroOne - Voos'
    Color = 8404992
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 801
    Height = 572
    Align = alClient
    TabOrder = 1
    object Label15: TLabel
      Left = 621
      Top = 408
      Width = 82
      Height = 81
      Caption = #55357#57068
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -60
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Panel3: TPanel
      Left = 8
      Top = 16
      Width = 513
      Height = 305
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      object Label2: TLabel
        Left = 16
        Top = 29
        Width = 160
        Height = 28
        Caption = 'Voos Dispon'#237'veis'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 240
        Top = 35
        Width = 209
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TextHint = 'Buscar por origem ou destino...'
      end
      object DBGrid1: TDBGrid
        Left = 16
        Top = 104
        Width = 465
        Height = 161
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -13
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
    end
    object Panel4: TPanel
      Left = 8
      Top = 352
      Width = 513
      Height = 201
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      object Label1: TLabel
        Left = 16
        Top = 13
        Width = 151
        Height = 28
        Caption = 'Voos Conectado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGrid2: TDBGrid
        Left = 16
        Top = 56
        Width = 465
        Height = 120
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -13
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
    end
    object Panel5: TPanel
      Left = 544
      Top = 27
      Width = 233
      Height = 294
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      object Panel6: TPanel
        Left = 24
        Top = 56
        Width = 185
        Height = 41
        Caption = 'Me Conectar'
        Color = 8404992
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object Panel7: TPanel
        Left = 24
        Top = 136
        Width = 185
        Height = 41
        Caption = 'Cancelar Voo'
        Color = 8404992
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
      end
    end
  end
end
