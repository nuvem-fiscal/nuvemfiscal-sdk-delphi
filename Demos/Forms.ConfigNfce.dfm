object fmConfigNfce: TfmConfigNfce
  Left = 0
  Top = 0
  Caption = 'Configura'#231#227'o NFC-e'
  ClientHeight = 321
  ClientWidth = 298
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  DesignSize = (
    298
    321)
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 5
    Top = 8
    Width = 284
    Height = 273
    ActivePage = tsDados
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    object tsDados: TTabSheet
      Caption = 'Dados'
      object pnCertificado: TPanel
        Left = 0
        Top = 0
        Width = 276
        Height = 243
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 570
        ExplicitHeight = 187
        object Label6: TLabel
          Left = 8
          Top = 158
          Width = 25
          Height = 15
          Caption = 'CSC:'
        end
        object Label11: TLabel
          Left = 6
          Top = 6
          Width = 55
          Height = 15
          Caption = 'Ambiente:'
        end
        object Label2: TLabel
          Left = 8
          Top = 110
          Width = 38
          Height = 15
          Caption = 'Id CSC:'
        end
        object Label13: TLabel
          Left = 6
          Top = 53
          Width = 185
          Height = 15
          Caption = 'C'#243'digo de Regime Tribut'#225'rio (CRT):'
        end
        object edCSC: TEdit
          Left = 6
          Top = 176
          Width = 259
          Height = 23
          TabOrder = 2
        end
        object cbAmbiente: TComboBox
          Left = 6
          Top = 24
          Width = 259
          Height = 23
          Style = csDropDownList
          TabOrder = 0
          Items.Strings = (
            'Homologa'#231#227'o'
            'Produ'#231#227'o')
        end
        object edIdCSC: TEdit
          Left = 6
          Top = 128
          Width = 107
          Height = 23
          NumbersOnly = True
          TabOrder = 1
        end
        object cbCRT: TComboBox
          Left = 6
          Top = 74
          Width = 259
          Height = 23
          Style = csDropDownList
          TabOrder = 3
          Items.Strings = (
            '1: Simples Nacional'
            '2: Simples Nacional '#8211' excesso de sublimite de receita bruta'
            '3: Regime Normal')
        end
      end
    end
  end
  object btCancelar: TButton
    Left = 214
    Top = 287
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 2
  end
  object btOk: TButton
    Left = 133
    Top = 287
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
