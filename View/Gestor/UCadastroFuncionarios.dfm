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
  OnCreate = FormCreate
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
    ExplicitLeft = -8
    object LabelTituloFuncionarios: TLabel
      Left = 19
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
      Left = 19
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
    object ButNovoFuncionario: TPanel
      Left = 599
      Top = 200
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
      OnClick = ButNovoFuncionarioClick
    end
    object EditBuscaFuncionarios: TEdit
      Left = 328
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
      TextHint = 'Pesquisar por nome'
      OnChange = EditBuscaFuncionariosChange
    end
    object PanelExcluirFuncionario: TPanel
      Left = 599
      Top = 356
      Width = 132
      Height = 38
      Caption = 'Excluir'
      Color = 5975552
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      OnClick = PanelExcluirFuncionarioClick
    end
    object PanelEditarFuncionario: TPanel
      Left = 599
      Top = 278
      Width = 132
      Height = 38
      Caption = 'Editar'
      Color = 5975552
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
      OnClick = PanelEditarFuncionarioClick
    end
    object PanelGridFuncionario: TPanel
      Left = 35
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
        DataSource = DataModule1.DataSourceFuncionarios
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
    end
    object ButSalvarFuncionarios: TButton
      Left = 599
      Top = 432
      Width = 132
      Height = 38
      Caption = 'Salvar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = ButSalvarFuncionariosClick
    end
    object EditEmailFuncionarios: TEdit
      Left = 186
      Top = 494
      Width = 153
      Height = 23
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      TextHint = 'E-mail'
    end
    object EditNomeFuncionarios: TEdit
      Left = 35
      Top = 494
      Width = 145
      Height = 23
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      TextHint = 'Nome'
    end
    object ComboBoxCargos: TComboBox
      Left = 265
      Top = 523
      Width = 128
      Height = 23
      Color = clMenu
      TabOrder = 8
      TextHint = 'Cargo'
      Items.Strings = (
        'Gestor '
        'Piloto '
        'AeroMo'#231'o(a)')
    end
    object EditNascimento: TEdit
      Left = 472
      Top = 494
      Width = 118
      Height = 23
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      TextHint = 'Data de Nascimento'
    end
    object EditTelefone: TEdit
      Left = 345
      Top = 494
      Width = 121
      Height = 23
      Color = clMenu
      TabOrder = 10
      TextHint = 'Telefone '
    end
    object EditCEP: TEdit
      Left = 35
      Top = 523
      Width = 97
      Height = 23
      Color = clMenu
      TabOrder = 11
      TextHint = 'CEP'
    end
    object EditRua: TEdit
      Left = 138
      Top = 523
      Width = 121
      Height = 23
      Color = clMenu
      TabOrder = 12
      TextHint = 'Rua'
    end
    object ComboBoxEscolaridade: TComboBox
      Left = 399
      Top = 523
      Width = 145
      Height = 23
      Color = clMenu
      TabOrder = 13
      TextHint = 'Escolaridade'
      Items.Strings = (
        'Sem escolaridade'
        'Ensino M'#233'dio (Incompleto)'
        'Ensino M'#233'dio (Completo)'
        'Ensino Superior (Incompleto)'
        'Ensino Superior (Completo) '
        'Ensino T'#233'cnico/Profissionalizante'
        'P'#243's-Graduado')
    end
  end
end
