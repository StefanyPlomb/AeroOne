object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Form6'
  ClientHeight = 345
  ClientWidth = 848
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object PanelFundo_funcionarios: TPanel
    Left = 0
    Top = 0
    Width = 848
    Height = 345
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 148
      Height = 35
      Caption = 'Funcion'#225'rios'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11556864
      Font.Height = -25
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 42
      Width = 260
      Height = 20
      Caption = 'Gerencie a equipe da companhia a'#233'rea'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Panel1: TPanel
      Left = 655
      Top = 31
      Width = 146
      Height = 42
      Caption = '+ Novo Funcion'#225'rio'
      Color = 5975552
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      OnClick = Panel1Click
    end
    object Edit1: TEdit
      Left = 8
      Top = 72
      Width = 217
      Height = 23
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 'Pesquisar por nome...'
    end
    object Panel2: TPanel
      Left = 520
      Top = 72
      Width = 89
      Height = 30
      Caption = 'Excluir'
      Color = 5975552
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4079359
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
    end
    object Panel3: TPanel
      Left = 408
      Top = 72
      Width = 89
      Height = 30
      Caption = 'Editar'
      Color = 5975552
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 41984
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
    end
    object Panel4: TPanel
      Left = 8
      Top = 108
      Width = 617
      Height = 221
      Caption = 'Panel4'
      Color = 11316396
      ParentBackground = False
      TabOrder = 4
      object StringGrid1: TStringGrid
        Left = 16
        Top = 16
        Width = 585
        Height = 193
        ColCount = 10
        RowCount = 9
        TabOrder = 0
      end
    end
    object Paneledit: TPanel
      Left = 631
      Top = 100
      Width = 217
      Height = 245
      Color = clWhite
      ParentBackground = False
      TabOrder = 5
    end
  end
end
