object FormMeusDados: TFormMeusDados
  Left = 0
  Top = 0
  Caption = 'FormMeusDados'
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
  object PanelCentralDados: TPanel
    Left = 0
    Top = 0
    Width = 750
    Height = 598
    Align = alClient
    TabOrder = 0
    object LabelIcon: TLabel
      Left = 605
      Top = 441
      Width = 82
      Height = 81
      Caption = #55357#57068
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -60
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object PanelSuperiorTitulo: TPanel
      Left = 1
      Top = 1
      Width = 748
      Height = 56
      Align = alTop
      Alignment = taLeftJustify
      Caption = '     Sistema AerOne - Meus Dados'
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
      TabOrder = 0
    end
    object PanelDados: TPanel
      Left = 16
      Top = 79
      Width = 521
      Height = 489
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object LabelSubTitulo: TLabel
        Left = 16
        Top = 13
        Width = 201
        Height = 28
        Caption = 'Informa'#231#245'es Pessoais'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LabelEndereço: TLabel
        Left = 16
        Top = 226
        Width = 93
        Height = 28
        Caption = 'Endere'#231'o '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LabelNome: TLabel
        Left = 16
        Top = 57
        Width = 97
        Height = 17
        Caption = 'Nome Completo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object LabelCPF: TLabel
        Left = 264
        Top = 57
        Width = 21
        Height = 17
        Caption = 'CPF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object LabelEmail: TLabel
        Left = 16
        Top = 129
        Width = 36
        Height = 17
        Caption = 'E-mail'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object LabelTelefone: TLabel
        Left = 264
        Top = 129
        Width = 94
        Height = 17
        Caption = 'Telefone/Celular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object LabelCEP: TLabel
        Left = 16
        Top = 260
        Width = 22
        Height = 17
        Caption = 'CEP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object LabelRua: TLabel
        Left = 135
        Top = 257
        Width = 22
        Height = 17
        Caption = 'Rua'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object LabelBairro: TLabel
        Left = 17
        Top = 329
        Width = 35
        Height = 17
        Caption = 'Bairro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object LabelCidade: TLabel
        Left = 199
        Top = 329
        Width = 41
        Height = 17
        Caption = 'Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object EditNome: TEdit
        Left = 16
        Top = 80
        Width = 201
        Height = 23
        TabOrder = 0
        TextHint = 'EX: Maria da Silva'
      end
      object EditCPF: TEdit
        Left = 264
        Top = 80
        Width = 201
        Height = 23
        TabOrder = 1
        TextHint = '000.000.000-00'
      end
      object EditEmail: TEdit
        Left = 16
        Top = 152
        Width = 201
        Height = 23
        TabOrder = 2
        TextHint = 'seu@exemplo.com'
      end
      object EditTelefone: TEdit
        Left = 264
        Top = 152
        Width = 201
        Height = 23
        TabOrder = 3
        TextHint = '(00) 00000-0000'
      end
      object EditCEP: TEdit
        Left = 16
        Top = 280
        Width = 113
        Height = 23
        TabOrder = 4
        TextHint = '00000-000'
        OnExit = EditCEPExit
      end
      object EditRua: TEdit
        Left = 135
        Top = 280
        Width = 330
        Height = 23
        TabOrder = 5
      end
      object EditBairro: TEdit
        Left = 17
        Top = 352
        Width = 154
        Height = 23
        TabOrder = 6
      end
      object EditCidade: TEdit
        Left = 199
        Top = 352
        Width = 170
        Height = 23
        TabOrder = 7
      end
      object ButSalvar: TPanel
        Left = 16
        Top = 416
        Width = 137
        Height = 41
        Caption = 'Salvar'
        Color = 8404992
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 8
        OnClick = ButSalvarClick
      end
      object ButCancelar: TPanel
        Left = 184
        Top = 416
        Width = 145
        Height = 41
        Caption = 'Cancelar '
        Color = 16448500
        DoubleBuffered = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 9
      end
      object ButEditar: TPanel
        Left = 352
        Top = 416
        Width = 113
        Height = 41
        Caption = 'Editar'
        Color = 16744576
        DoubleBuffered = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 10
        OnClick = ButEditarClick
      end
    end
    object PanelLateralDados: TPanel
      Left = 552
      Top = 79
      Width = 185
      Height = 313
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      object Label12: TLabel
        Left = 8
        Top = 7
        Width = 119
        Height = 28
        Caption = 'Documentos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 8
        Top = 51
        Width = 17
        Height = 17
        Caption = 'RG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 8
        Top = 123
        Width = 65
        Height = 17
        Caption = 'Passaporte'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object EditRG: TEdit
        Left = 8
        Top = 74
        Width = 169
        Height = 23
        TabOrder = 0
      end
      object EditPassaporte: TEdit
        Left = 8
        Top = 146
        Width = 169
        Height = 23
        TabOrder = 1
      end
    end
  end
end
