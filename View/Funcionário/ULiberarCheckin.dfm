object FormLiberarCheckin: TFormLiberarCheckin
  Left = 0
  Top = 0
  Caption = 'FormLiberarCheckin'
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
    Left = -16
    Top = -39
    Width = 750
    Height = 339
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
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
