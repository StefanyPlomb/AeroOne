object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Form6'
  ClientHeight = 345
  ClientWidth = 738
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
    Width = 738
    Height = 345
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 756
    ExplicitHeight = 330
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 120
      Height = 28
      Caption = 'Funcion'#225'rios'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11556864
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 42
      Width = 204
      Height = 15
      Caption = 'Gerencie a equipe da companhia a'#233'rea'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Panel1: TPanel
      Left = 464
      Top = 42
      Width = 185
      Height = 49
      Caption = '+    Novo Funcion'#225'rio'
      Color = 5975552
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 8
      Top = 79
      Width = 196
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
      Left = 599
      Top = 273
      Width = 97
      Height = 33
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
      Left = 599
      Top = 234
      Width = 97
      Height = 33
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
      Width = 585
      Height = 221
      Caption = 'Panel4'
      Color = 11316396
      ParentBackground = False
      TabOrder = 4
      object StringGrid1: TStringGrid
        Left = 8
        Top = 16
        Width = 569
        Height = 193
        ColCount = 10
        RowCount = 9
        TabOrder = 0
      end
    end
  end
end
