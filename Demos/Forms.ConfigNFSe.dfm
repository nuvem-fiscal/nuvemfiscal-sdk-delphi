object fmConfigNfse: TfmConfigNfse
  Left = 0
  Top = 0
  Caption = 'Configura'#231#227'o NFS-e'
  ClientHeight = 138
  ClientWidth = 590
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  DesignSize = (
    590
    138)
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 5
    Top = 8
    Width = 577
    Height = 91
    ActivePage = tsDados
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    object tsDados: TTabSheet
      Caption = 'Dados'
      object pnCertificado: TPanel
        Left = 0
        Top = 0
        Width = 569
        Height = 61
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Label6: TLabel
          Left = 354
          Top = 6
          Width = 51
          Height = 15
          Caption = 'S'#233'rie RPS:'
        end
        object Label9: TLabel
          Left = 466
          Top = 6
          Width = 49
          Height = 15
          Caption = 'Lote RPS:'
        end
        object Label11: TLabel
          Left = 6
          Top = 6
          Width = 55
          Height = 15
          Caption = 'Ambiente:'
        end
        object Label2: TLabel
          Left = 241
          Top = 6
          Width = 70
          Height = 15
          Caption = 'N'#250'mero RPS:'
        end
        object edSerieRPS: TEdit
          Left = 352
          Top = 24
          Width = 107
          Height = 23
          TabOrder = 2
        end
        object edLoteRPS: TEdit
          Left = 465
          Top = 24
          Width = 98
          Height = 23
          NumbersOnly = True
          TabOrder = 3
        end
        object cbAmbiente: TComboBox
          Left = 6
          Top = 24
          Width = 227
          Height = 23
          Style = csDropDownList
          TabOrder = 0
          Items.Strings = (
            'Homologa'#231#227'o'
            'Produ'#231#227'o')
        end
        object edNumeroRPS: TEdit
          Left = 239
          Top = 24
          Width = 107
          Height = 23
          NumbersOnly = True
          TabOrder = 1
        end
      end
    end
  end
  object btCancelar: TButton
    Left = 496
    Top = 105
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 2
  end
  object btOk: TButton
    Left = 415
    Top = 105
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Ok'
    Default = True
    ModalResult = 2
    TabOrder = 1
    OnClick = btOkClick
  end
end
