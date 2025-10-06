object FormCadastroFuncionaris: TFormCadastroFuncionaris
  Left = 0
  Top = 0
  Caption = 'FormCadastroFuncionaris'
  ClientHeight = 598
  ClientWidth = 750
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object PanelCentral_Funcionarios: TPanel
    Left = 0
    Top = 0
    Width = 750
    Height = 598
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 811
    ExplicitHeight = 390
    object LabelTituloFuncionarios: TLabel
      Left = 11
      Top = 16
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
    object LabelSubtituloFuncionarios: TLabel
      Left = 11
      Top = 57
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
    object PanelNovoFuncionario: TPanel
      Left = 575
      Top = 379
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
    end
    object EditBuscaFuncionarios: TEdit
      Left = 304
      Top = 104
      Width = 244
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
    object PanelExcluirFuncionario: TPanel
      Left = 575
      Top = 308
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
    object PanelEditarFuncionario: TPanel
      Left = 575
      Top = 238
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
    end
    object PanelGridFuncionario: TPanel
      Left = 11
      Top = 133
      Width = 537
      Height = 355
      Color = 11316396
      ParentBackground = False
      TabOrder = 4
      object DBGridFuncionarios: TDBGrid
        Left = 8
        Top = 16
        Width = 521
        Height = 321
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
    end
    object ButSalvarFuncionarios: TButton
      Left = 575
      Top = 445
      Width = 132
      Height = 25
      Caption = 'Salvar'
      TabOrder = 5
    end
    object EditViewEmail: TEdit
      Left = 186
      Top = 516
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
    object EditViewCodigo: TEdit
      Left = 490
      Top = 516
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
    object EditCargosFuncionarios: TEdit
      Left = 369
      Top = 516
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
    object EditNomeFuncionarios: TEdit
      Left = 11
      Top = 516
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
    object ButVoltarFuncionarios: TButton
      Left = 575
      Top = 173
      Width = 132
      Height = 25
      Caption = 'HOME'
      TabOrder = 10
    end
  end
end
