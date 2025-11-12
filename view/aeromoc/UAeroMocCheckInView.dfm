object FormCheckIn: TFormCheckIn
  Left = 0
  Top = 0
  Caption = 'FormCheckIn'
  ClientHeight = 598
  ClientWidth = 750
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object PaneleCentral_AeroMo: TPanel
    Left = 0
    Top = 0
    Width = 750
    Height = 598
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object LabelSubtituloCheck: TLabel
      Left = 18
      Top = 52
      Width = 268
      Height = 20
      Caption = 'Selecione um voo para iniciar o check-in'
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
      Width = 102
      Height = 35
      Caption = 'Check-in'
      Color = 5581568
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11556864
      Font.Height = -25
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object DBGridAtribuidos: TDBGrid
      Left = 114
      Top = 112
      Width = 431
      Height = 161
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
    object Edit1: TEdit
      Left = 424
      Top = 43
      Width = 201
      Height = 23
      TabOrder = 1
      TextHint = 'Buscar'
    end
    object ButBuscar_Aeromo: TPanel
      Left = 631
      Top = 38
      Width = 91
      Height = 28
      Caption = 'Buscar'
      Color = 5975552
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
    end
    object ButtonIniciar: TButton
      Left = 576
      Top = 240
      Width = 129
      Height = 33
      Caption = 'Iniciar'
      TabOrder = 3
      OnClick = ButtonIniciarClick
    end
    object PanelAbrir: TPanel
      Left = 0
      Top = 313
      Width = 750
      Height = 285
      Color = clWhite
      ParentBackground = False
      TabOrder = 4
    end
  end
end
