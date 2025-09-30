object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Form6'
  ClientHeight = 423
  ClientWidth = 827
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object PanelFundo_funcionarios: TPanel
    Left = 0
    Top = 0
    Width = 827
    Height = 423
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
      Top = 58
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
      Left = 647
      Top = 232
      Width = 132
      Height = 38
      Caption = 'Novo Funcion'#225'rio'
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
      Left = 371
      Top = 79
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
      Left = 647
      Top = 178
      Width = 132
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
      Left = 647
      Top = 124
      Width = 132
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
      OnClick = Panel3Click
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
        Left = 8
        Top = 16
        Width = 585
        Height = 193
        Color = 14197398
        ColCount = 10
        FixedColor = 12615680
        RowCount = 1
        FixedRows = 0
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnDrawCell = StringGrid1DrawCell
      end
    end
    object Button1: TButton
      Left = 647
      Top = 292
      Width = 132
      Height = 25
      Caption = 'Salvar'
      TabOrder = 5
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 170
      Top = 348
      Width = 153
      Height = 23
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Text = 'E-mail...'
    end
    object Edit3: TEdit
      Left = 439
      Top = 348
      Width = 58
      Height = 23
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      Text = 'C'#243'digo'
    end
    object Edit4: TEdit
      Left = 329
      Top = 348
      Width = 104
      Height = 23
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      Text = 'Funs'#227'o...'
    end
    object EditNome_cadastro: TEdit
      Left = 11
      Top = 348
      Width = 153
      Height = 23
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      Text = 'Nome...'
    end
  end
end
