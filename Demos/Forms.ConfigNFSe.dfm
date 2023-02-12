object fmConfigNfse: TfmConfigNfse
  Left = 0
  Top = 0
  Caption = 'Configura'#231#227'o NFS-e'
  ClientHeight = 266
  ClientWidth = 599
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  DesignSize = (
    599
    266)
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 5
    Top = 8
    Width = 586
    Height = 217
    ActivePage = tsDados
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    object tsDados: TTabSheet
      Caption = 'Dados'
      object pnCertificado: TPanel
        Left = 0
        Top = 0
        Width = 578
        Height = 187
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitTop = 4
        ExplicitHeight = 203
        DesignSize = (
          578
          187)
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
        object Label12: TLabel
          Left = 5
          Top = 71
          Width = 142
          Height = 15
          Caption = 'Situa'#231#227'o Simples Nacional:'
        end
        object Label13: TLabel
          Left = 6
          Top = 127
          Width = 173
          Height = 15
          Caption = 'Regime especial de tributa'#231#227'o:'
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
        object cbSimplesNacional: TComboBox
          Left = 6
          Top = 92
          Width = 399
          Height = 23
          Style = csDropDownList
          TabOrder = 4
          Items.Strings = (
            '1: N'#227'o Optante'
            '2: Optante - Microempreendedor Individual (MEI)'
            '3: Optante - Microempresa ou Empresa de Pequeno Porte (ME/EPP)')
        end
        object cbRegimeEspecial: TComboBox
          Left = 6
          Top = 148
          Width = 211
          Height = 23
          Style = csDropDownList
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 5
          Items.Strings = (
            '0: Nenhum'
            '1: Ato Cooperado (Cooperativa)'
            '2: Estimativa'
            '3: Microempresa Municipal'
            '4: Not'#225'rio ou Registrador'
            '5: Profissional Aut'#244'nomo'
            '6: Sociedade de Profissionais')
        end
        object chkIncentivoFiscal: TCheckBox
          Left = 257
          Top = 151
          Width = 113
          Height = 17
          Caption = 'Incentivo Fiscal'
          TabOrder = 6
        end
      end
    end
  end
  object btCancelar: TButton
    Left = 516
    Top = 231
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 2
  end
  object btOk: TButton
    Left = 435
    Top = 231
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
