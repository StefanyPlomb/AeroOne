object Form8: TForm8
  Left = 0
  Top = 0
  Caption = 'Form8'
  ClientHeight = 444
  ClientWidth = 814
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 814
    Height = 444
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 817
    ExplicitHeight = 483
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 202
      Height = 35
      Caption = 'Cadastro de Voos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11556864
      Font.Height = -25
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 18
      Top = 37
      Width = 150
      Height = 20
      Caption = 'Crie a pr'#243'xima viagem'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object StringGrid1: TStringGrid
      Left = 16
      Top = 80
      Width = 591
      Height = 233
      ColCount = 9
      FixedColor = 12615680
      RowCount = 1
      FixedRows = 0
      TabOrder = 1
      OnDrawCell = StringGrid1DrawCell
    end
    object Edit1: TEdit
      Left = 408
      Top = 38
      Width = 217
      Height = 23
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'Pesquisar por ID...'
    end
    object Panelvoogestor: TPanel
      Left = 655
      Top = 91
      Width = 138
      Height = 233
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      object Panel2: TPanel
        Left = 8
        Top = 58
        Width = 105
        Height = 34
        Caption = 'Alterar '
        Color = 8404992
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 41984
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object Panel3: TPanel
        Left = 8
        Top = 112
        Width = 105
        Height = 34
        Caption = 'Excluir '
        Color = 8404992
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4079359
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
      end
      object Panel4: TPanel
        Left = 8
        Top = 0
        Width = 105
        Height = 34
        Caption = 'Criar novo'
        Color = 8404992
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 41984
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        OnClick = Panel4Click
      end
    end
    object Edit2: TEdit
      Left = 118
      Top = 330
      Width = 150
      Height = 23
      TabOrder = 3
      Text = 'De'
    end
    object Edit3: TEdit
      Left = 18
      Top = 330
      Width = 79
      Height = 23
      TabOrder = 4
      Text = 'C'#243'digo'
    end
    object Edit4: TEdit
      Left = 187
      Top = 370
      Width = 150
      Height = 23
      TabOrder = 5
      Text = 'AeroMo'#231'o(a)'
    end
    object Edit5: TEdit
      Left = 290
      Top = 330
      Width = 150
      Height = 23
      TabOrder = 6
      Text = 'Para'
    end
    object Edit6: TEdit
      Left = 18
      Top = 370
      Width = 150
      Height = 23
      TabOrder = 7
      Text = 'Piloto'
    end
    object Panel5: TPanel
      Left = 663
      Top = 264
      Width = 105
      Height = 33
      Caption = 'Salvar'
      Color = 8404992
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 8
      OnClick = Panel5Click
    end
  end
end
