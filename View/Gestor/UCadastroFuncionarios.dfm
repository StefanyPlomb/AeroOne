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
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = 8
    object PanelDados: TPanel
      Left = 17
      Top = 104
      Width = 564
      Height = 369
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 238
        Height = 28
        Caption = 'Cadastro de Funcion'#225'rios'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGridFuncionarios: TDBGrid
        Left = 14
        Top = 80
        Width = 534
        Height = 265
        DataSource = DataModule1.DataSourceFuncionarios
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
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
      object EditBuscaFuncionarios: TEdit
        Left = 304
        Top = 24
        Width = 244
        Height = 23
        Color = clWhite
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
    end
    object PanelSuperiorTitulos: TPanel
      Left = 1
      Top = 1
      Width = 748
      Height = 56
      Align = alTop
      Alignment = taLeftJustify
      Caption = '     Sistema AeroOne - Voos'
      Color = 8404992
      DoubleBuffered = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 1
      ExplicitLeft = 2
      ExplicitTop = 0
    end
    object PanelLateralBotoes: TPanel
      Left = 606
      Top = 104
      Width = 131
      Height = 321
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      object PanelEditarFuncionario: TPanel
        Left = 8
        Top = 25
        Width = 116
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
        TabOrder = 0
        OnClick = PanelEditarFuncionarioClick
      end
      object PanelExcluirFuncionario: TPanel
        Left = 8
        Top = 94
        Width = 116
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
        TabOrder = 1
        OnClick = PanelExcluirFuncionarioClick
      end
      object ButNovoFuncionario: TPanel
        Left = 8
        Top = 174
        Width = 116
        Height = 38
        Caption = 'Adicionar'
        Color = 5975552
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        OnClick = ButNovoFuncionarioClick
      end
      object ButSalvarFuncionarios: TButton
        Left = 8
        Top = 242
        Width = 116
        Height = 38
        Caption = 'Salvar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = ButSalvarFuncionariosClick
      end
    end
    object Panel1: TPanel
      Left = 17
      Top = 496
      Width = 564
      Height = 89
      Color = clWhite
      ParentBackground = False
      TabOrder = 3
      object ComboBoxCargos: TComboBox
        Left = 254
        Top = 50
        Width = 128
        Height = 23
        Color = clMenu
        TabOrder = 0
        TextHint = 'Cargo'
        Items.Strings = (
          'Gestor '
          'Piloto '
          'AeroMo'#231'o(a)')
      end
      object ComboBoxEscolaridade: TComboBox
        Left = 403
        Top = 50
        Width = 145
        Height = 23
        Color = clMenu
        TabOrder = 1
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
    object EditCEP: TEdit
      Left = 33
      Top = 545
      Width = 97
      Height = 23
      Color = clMenu
      TabOrder = 4
      TextHint = 'CEP'
    end
    object EditEmailFuncionarios: TEdit
      Left = 182
      Top = 508
      Width = 153
      Height = 23
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      TextHint = 'E-mail'
    end
    object EditCPF: TEdit
      Left = 456
      Top = 508
      Width = 118
      Height = 23
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      TextHint = 'CPF'
    end
    object EditNomeFuncionarios: TEdit
      Left = 31
      Top = 508
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
    object EditRua: TEdit
      Left = 144
      Top = 545
      Width = 121
      Height = 23
      Color = clMenu
      TabOrder = 8
      TextHint = 'Rua'
    end
    object EditTelefone: TEdit
      Left = 341
      Top = 508
      Width = 109
      Height = 23
      Color = clMenu
      TabOrder = 9
      TextHint = 'Telefone '
    end
  end
end
