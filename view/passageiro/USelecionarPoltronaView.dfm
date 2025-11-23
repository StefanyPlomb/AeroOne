object FormSelecionarPoltrona: TFormSelecionarPoltrona
  Left = 0
  Top = 0
  Caption = 'Selecione sua Poltrona'
  ClientHeight = 98
  ClientWidth = 353
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object cbxAssento: TComboBox
    AlignWithMargins = True
    Left = 1
    Top = 32
    Width = 351
    Height = 33
    Margins.Left = 1
    Margins.Top = 0
    Margins.Right = 1
    Margins.Bottom = 0
    Align = alBottom
    BevelInner = bvNone
    BevelOuter = bvNone
    Style = csDropDownList
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object cbxZona: TComboBox
    AlignWithMargins = True
    Left = 1
    Top = 0
    Width = 351
    Height = 33
    Margins.Left = 1
    Margins.Top = 0
    Margins.Right = 1
    Margins.Bottom = 0
    Align = alTop
    BevelInner = bvNone
    BevelOuter = bvNone
    Style = csDropDownList
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnChange = cbxZonaChange
    Items.Strings = (
      'Zona A'
      'Zona B'
      'Zona C'
      'Zona D')
  end
  object pnlConfirmar: TPanel
    Left = 0
    Top = 65
    Width = 353
    Height = 33
    Cursor = crHandPoint
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Confirmar'
    Color = 6310948
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    StyleElements = [seClient, seBorder]
    OnClick = pnlConfirmarClick
  end
end
