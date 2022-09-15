object fmEmpresa: TfmEmpresa
  Left = 0
  Top = 0
  Caption = 'Empresa'
  ClientHeight = 375
  ClientWidth = 560
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  DesignSize = (
    560
    375)
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 6
    Top = 8
    Width = 548
    Height = 329
    ActivePage = tsEndereco
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    object tsEndereco: TTabSheet
      Caption = 'Dados gerais'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 540
        Height = 299
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          540
          299)
        object Label1: TLabel
          Left = 6
          Top = 149
          Width = 24
          Height = 15
          Caption = 'CEP:'
        end
        object Label2: TLabel
          Left = 6
          Top = 196
          Width = 65
          Height = 15
          Caption = 'Logradouro:'
        end
        object Label3: TLabel
          Left = 354
          Top = 196
          Width = 47
          Height = 15
          Anchors = [akTop, akRight]
          Caption = 'N'#250'mero:'
          ExplicitLeft = 327
        end
        object Label4: TLabel
          Left = 6
          Top = 244
          Width = 40
          Height = 15
          Caption = 'Cidade:'
        end
        object Label7: TLabel
          Left = 223
          Top = 244
          Width = 17
          Height = 15
          Caption = 'UF:'
        end
        object Label8: TLabel
          Left = 277
          Top = 244
          Width = 55
          Height = 15
          Caption = 'C'#243'd. IBGE:'
        end
        object Label5: TLabel
          Left = 6
          Top = 7
          Width = 30
          Height = 15
          Caption = 'CNPJ:'
        end
        object Label6: TLabel
          Left = 243
          Top = 54
          Width = 78
          Height = 15
          Anchors = [akTop, akRight]
          Caption = 'Inscr. Estadual:'
          ExplicitLeft = 216
        end
        object Label9: TLabel
          Left = 395
          Top = 54
          Width = 87
          Height = 15
          Anchors = [akTop, akRight]
          Caption = 'Inscr. municipal:'
          ExplicitLeft = 368
        end
        object Label10: TLabel
          Left = 175
          Top = 7
          Width = 67
          Height = 15
          Caption = 'Raz'#227'o social:'
        end
        object Label11: TLabel
          Left = 6
          Top = 54
          Width = 37
          Height = 15
          Caption = 'E-mail:'
        end
        object Label12: TLabel
          Left = 6
          Top = 101
          Width = 116
          Height = 15
          Caption = 'Regime de tributa'#231#227'o:'
        end
        object Label13: TLabel
          Left = 176
          Top = 101
          Width = 161
          Height = 15
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Regime especial de tributa'#231#227'o:'
        end
        object Label14: TLabel
          Left = 421
          Top = 196
          Width = 34
          Height = 15
          Anchors = [akTop, akRight]
          Caption = 'Bairro:'
          ExplicitLeft = 394
        end
        object edCEP: TEdit
          Left = 6
          Top = 167
          Width = 133
          Height = 23
          TabOrder = 8
        end
        object edLogradouro: TEdit
          Left = 6
          Top = 214
          Width = 339
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 10
        end
        object edNumero: TEdit
          Left = 354
          Top = 214
          Width = 59
          Height = 23
          Anchors = [akTop, akRight]
          TabOrder = 11
        end
        object edCidade: TEdit
          Left = 6
          Top = 262
          Width = 211
          Height = 23
          TabOrder = 13
        end
        object edUF: TEdit
          Left = 223
          Top = 262
          Width = 48
          Height = 23
          TabOrder = 14
        end
        object edCodigoIBGE: TEdit
          Left = 277
          Top = 262
          Width = 101
          Height = 23
          TabOrder = 15
        end
        object btBuscaCEP: TButton
          Left = 145
          Top = 166
          Width = 63
          Height = 25
          Caption = 'Busca'
          TabOrder = 9
        end
        object edCNPJ: TEdit
          Left = 6
          Top = 25
          Width = 163
          Height = 23
          TabOrder = 0
        end
        object edInscrEstadual: TEdit
          Left = 242
          Top = 72
          Width = 147
          Height = 23
          Anchors = [akTop, akRight]
          TabOrder = 3
        end
        object edInscrMunicipal: TEdit
          Left = 395
          Top = 72
          Width = 137
          Height = 23
          Anchors = [akTop, akRight]
          TabOrder = 4
        end
        object edRazaoSocial: TEdit
          Left = 175
          Top = 25
          Width = 357
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 1
        end
        object edEmail: TEdit
          Left = 6
          Top = 72
          Width = 230
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 2
        end
        object cbRegimeTributacao: TComboBox
          Left = 6
          Top = 120
          Width = 163
          Height = 23
          Style = csDropDownList
          TabOrder = 5
          Items.Strings = (
            '0: Nenhum'
            '1: Simples nacional'
            '2: Simples nacional - excesso'
            '3: Normal - lucro presumido'
            '4: Normal - lucro real')
        end
        object cbRegimeEspecial: TComboBox
          Left = 176
          Top = 120
          Width = 211
          Height = 23
          Style = csDropDownList
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 6
          Items.Strings = (
            '0: Nenhum'
            '1: Micro empresa municipal'
            '2: Estimativa'
            '3: Sociedade de profissionais'
            '4: Cooperativa'
            '5: Microempres'#225'rio individual (MEI)'
            '6: Microempresa ou pequeno porte (ME/EPP)')
        end
        object chSimplesNacional: TCheckBox
          Left = 401
          Top = 123
          Width = 129
          Height = 17
          Anchors = [akTop, akRight]
          Caption = 'Simples nacional'
          TabOrder = 7
        end
        object edBairro: TEdit
          Left = 421
          Top = 214
          Width = 109
          Height = 23
          Anchors = [akTop, akRight]
          TabOrder = 12
        end
      end
    end
  end
  object btCancelar: TButton
    Left = 474
    Top = 343
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 2
  end
  object btOk: TButton
    Left = 394
    Top = 343
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Ok'
    TabOrder = 1
    OnClick = btOkClick
  end
end
