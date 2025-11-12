object FormMapaAcentos: TFormMapaAcentos
  Left = 0
  Top = 0
  Caption = 'FormMapaAcentos'
  ClientHeight = 300
  ClientWidth = 734
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 734
    Height = 300
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Label6: TLabel
      Left = 10
      Top = 11
      Width = 204
      Height = 35
      Caption = 'Mapa de Acentos'
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
      Left = 123
      Top = 73
      Width = 494
      Height = 200
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
    object Button3: TButton
      Left = 609
      Top = 11
      Width = 113
      Height = 33
      Caption = 'Voltar'
      TabOrder = 1
    end
  end
end
