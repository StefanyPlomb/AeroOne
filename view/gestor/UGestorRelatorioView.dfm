object FormGestorRelatorio: TFormGestorRelatorio
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FormGestorRelatorio'
  ClientHeight = 576
  ClientWidth = 944
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 944
    Height = 576
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    object scrollBox: TScrollBox
      AlignWithMargins = True
      Left = 290
      Top = 60
      Width = 364
      Height = 456
      Margins.Left = 290
      Margins.Top = 60
      Margins.Right = 290
      Margins.Bottom = 60
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      TabOrder = 0
      ExplicitLeft = 282
      object pnlDivBottom: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 451
        Width = 364
        Height = 5
        Cursor = crHandPoint
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alBottom
        BevelOuter = bvNone
        Color = 6310948
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        StyleElements = [seClient, seBorder]
      end
      object pnlRelatorioQtdVoosOrigemCanceladosPorCidade: TPanel
        AlignWithMargins = True
        Left = 20
        Top = 142
        Width = 324
        Height = 41
        Cursor = crHandPoint
        Margins.Left = 20
        Margins.Top = 20
        Margins.Right = 20
        Margins.Bottom = 0
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Quantidade de voos origem cancelados por cidade'
        Color = 6310948
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        StyleElements = [seClient, seBorder]
      end
      object pnlRelatorioQtdVoosOrigemPorCidade: TPanel
        AlignWithMargins = True
        Left = 20
        Top = 81
        Width = 324
        Height = 41
        Cursor = crHandPoint
        Margins.Left = 20
        Margins.Top = 20
        Margins.Right = 20
        Margins.Bottom = 0
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Quantidade de voos origem por cidade'
        Color = 6310948
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        StyleElements = [seClient, seBorder]
      end
      object pnlRelatorioTempoVoos: TPanel
        AlignWithMargins = True
        Left = 20
        Top = 20
        Width = 324
        Height = 41
        Cursor = crHandPoint
        Margins.Left = 20
        Margins.Top = 20
        Margins.Right = 20
        Margins.Bottom = 0
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Tempo dos voos por rota'
        Color = 6310948
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 3
        StyleElements = [seClient, seBorder]
      end
    end
  end
end
