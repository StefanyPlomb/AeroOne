object FormGestorRelatorio: TFormGestorRelatorio
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FormGestorRelatorio'
  ClientHeight = 576
  ClientWidth = 944
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 944
    Height = 576
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    object cardGestorRelatorios: TCardPanel
      Left = 0
      Top = 0
      Width = 944
      Height = 576
      Align = alClient
      ActiveCard = cardMainRelatorios
      BevelOuter = bvNone
      Caption = 'cardGestorRelatorios'
      TabOrder = 0
      object cardMainRelatorios: TCard
        Left = 0
        Top = 0
        Width = 944
        Height = 576
        Caption = 'cardMainRelatorios'
        CardIndex = 0
        TabOrder = 0
        object pnlMainFrame: TPanel
          Left = 0
          Top = 0
          Width = 944
          Height = 576
          Align = alClient
          BevelOuter = bvNone
          Color = 15791343
          ParentBackground = False
          TabOrder = 0
          object DBGridRelatorios: TDBGrid
            AlignWithMargins = True
            Left = 5
            Top = 84
            Width = 934
            Height = 487
            Margins.Left = 5
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 5
            Align = alBottom
            BorderStyle = bsNone
            Color = 15791343
            DrawingStyle = gdsGradient
            FixedColor = clWhite
            GradientEndColor = 6310948
            GradientStartColor = 4733212
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
          object pnlHeader: TPanel
            Left = 0
            Top = 0
            Width = 944
            Height = 81
            Align = alTop
            BevelOuter = bvNone
            Color = 15791343
            ParentBackground = False
            TabOrder = 1
            object pnlPesquisar: TPanel
              AlignWithMargins = True
              Left = 60
              Top = 25
              Width = 824
              Height = 31
              Margins.Left = 60
              Margins.Top = 25
              Margins.Right = 60
              Margins.Bottom = 25
              Align = alClient
              BevelOuter = bvNone
              Color = 15791343
              ParentBackground = False
              TabOrder = 0
              object imgSearch: TImage
                AlignWithMargins = True
                Left = 793
                Top = 3
                Width = 31
                Height = 22
                Cursor = crHandPoint
                Margins.Left = 0
                Margins.Right = 0
                Align = alClient
                Center = True
                Picture.Data = {
                  0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
                  00180806000000E0773DF8000000097048597300000B1300000B1301009A9C18
                  0000019C4944415478DACDD44B2844511CC7F17357F258D8CA8242B1F208494A
                  16F24843C9D6C6C22CB061E15152520A896C3C626163250BC446445E1B4A498A
                  148D4812A194F89ECE999A6E3373CE30CAA94FF3B8E7FE7FF79EFEE738E28F87
                  F3DF02F251872CC4E1169B58C2F36F0292318D2A7CE01C2F4845121ED085999F
                  04646203B1E8C39CEB690B3080728CA0239280781CE9CF32FDE4A1566208ED68
                  C2AC6D400FFA51825DC35C596B1D3948F7BFA529E012A7A8B1584A390A718046
                  CC9B02527085664C5906C87A3EACEAA50A1B50843D54EA57B71DF29E27A13A2E
                  6C40368E518FC508024E7086065380EC9C478CA2D3B27822EE31885E53801CCB
                  C84506DE2C02649B0E234FA8F6360614635BA85DEC35CC95C7C73EB6E0F1FF69
                  0A90D77774D0A47EC2D720F34AB1804FA15AD5671320AF8DA345A84D26BBEA4E
                  A8FE3ED44B265BB9161542ED728F70ED76C7A2F804DA7440B750674E4CC0DC0B
                  BD8472FE7BB04236C5BF02AECB633A0D09B8C1B5698DDDBFC7D02AD4EEF5BA8A
                  473C1CD7F7A8167707546325C4B24425400E797EAC45AB78B080A88F3F0FF806
                  1D5657190BFCD1450000000049454E44AE426082}
                ExplicitLeft = 864
                ExplicitWidth = 20
                ExplicitHeight = 75
              end
              object edtSearch: TEdit
                AlignWithMargins = True
                Left = 0
                Top = 0
                Width = 793
                Height = 28
                Margins.Left = 0
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 0
                Align = alLeft
                BorderStyle = bsNone
                Color = 15791343
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = 20
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                TextHint = ' Pesquise por ID ou email'
              end
              object pnlDiv1: TPanel
                AlignWithMargins = True
                Left = 0
                Top = 28
                Width = 824
                Height = 3
                Margins.Left = 0
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 0
                Align = alBottom
                BevelOuter = bvNone
                Color = 6310948
                ParentBackground = False
                TabOrder = 1
              end
            end
          end
        end
      end
    end
  end
end
