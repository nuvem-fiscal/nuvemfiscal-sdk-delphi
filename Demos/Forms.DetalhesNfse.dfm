object fmDetalhesNfse: TfmDetalhesNfse
  Left = 0
  Top = 0
  Caption = 'NFS-e'
  ClientHeight = 372
  ClientWidth = 560
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  DesignSize = (
    560
    372)
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 6
    Top = 8
    Width = 548
    Height = 326
    ActivePage = tsDadosGerais
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    object tsDadosGerais: TTabSheet
      Caption = 'Dados gerais'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 540
        Height = 296
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object lbId: TLabel
          Left = 6
          Top = -1
          Width = 13
          Height = 15
          Caption = 'Id:'
        end
        object Label15: TLabel
          Left = 265
          Top = -1
          Width = 73
          Height = 15
          Caption = 'Data Emiss'#227'o:'
        end
        object Label16: TLabel
          Left = 6
          Top = 46
          Width = 46
          Height = 15
          Caption = 'N'#176' Nota:'
        end
        object Label17: TLabel
          Left = 294
          Top = 46
          Width = 102
          Height = 15
          Caption = 'C'#243'digo Verifica'#231#227'o:'
        end
        object Label18: TLabel
          Left = 408
          Top = -1
          Width = 48
          Height = 15
          Caption = 'Situa'#231#227'o:'
        end
        object Label19: TLabel
          Left = 6
          Top = 94
          Width = 43
          Height = 15
          Caption = 'Link Url:'
        end
        object Label20: TLabel
          Left = 111
          Top = 46
          Width = 55
          Height = 15
          Caption = 'Ambiente:'
        end
        object Label21: TLabel
          Left = 207
          Top = 46
          Width = 58
          Height = 15
          Caption = 'Refer'#234'ncia:'
        end
        object Label39: TLabel
          Left = 408
          Top = 46
          Width = 57
          Height = 15
          Caption = 'Valor Total:'
        end
        object edId: TEdit
          Left = 6
          Top = 17
          Width = 253
          Height = 23
          ReadOnly = True
          TabOrder = 0
        end
        object edDataEmissao: TEdit
          Left = 265
          Top = 17
          Width = 137
          Height = 23
          ReadOnly = True
          TabOrder = 1
        end
        object edNumeroNota: TEdit
          Left = 6
          Top = 67
          Width = 99
          Height = 23
          ReadOnly = True
          TabOrder = 3
        end
        object edCodigoVerificacao: TEdit
          Left = 294
          Top = 67
          Width = 108
          Height = 23
          ReadOnly = True
          TabOrder = 6
        end
        object edSituacao: TEdit
          Left = 408
          Top = 17
          Width = 122
          Height = 23
          ReadOnly = True
          TabOrder = 2
        end
        object edLinkUrl: TEdit
          Left = 6
          Top = 113
          Width = 524
          Height = 23
          ReadOnly = True
          TabOrder = 8
        end
        object edAmbiente: TEdit
          Left = 111
          Top = 67
          Width = 90
          Height = 23
          ReadOnly = True
          TabOrder = 4
        end
        object edReferencia: TEdit
          Left = 207
          Top = 67
          Width = 81
          Height = 23
          ReadOnly = True
          TabOrder = 5
        end
        object edValorTotal: TEdit
          Left = 408
          Top = 67
          Width = 122
          Height = 23
          ReadOnly = True
          TabOrder = 7
        end
      end
    end
    object tsPrestador: TTabSheet
      Caption = 'Prestador'
      ImageIndex = 2
      DesignSize = (
        540
        296)
      object Label12: TLabel
        Left = 3
        Top = 7
        Width = 62
        Height = 15
        Caption = 'CPF / CNPJ:'
      end
      object Label13: TLabel
        Left = 172
        Top = 7
        Width = 111
        Height = 15
        Caption = 'Nome / Raz'#227'o social:'
      end
      object Label22: TLabel
        Left = 3
        Top = 54
        Width = 37
        Height = 15
        Caption = 'E-mail:'
      end
      object Label23: TLabel
        Left = 392
        Top = 54
        Width = 87
        Height = 15
        Anchors = [akTop, akRight]
        Caption = 'Inscr. municipal:'
      end
      object Label24: TLabel
        Left = 3
        Top = 149
        Width = 24
        Height = 15
        Caption = 'CEP:'
      end
      object Label25: TLabel
        Left = 3
        Top = 196
        Width = 65
        Height = 15
        Caption = 'Logradouro:'
      end
      object Label26: TLabel
        Left = 351
        Top = 196
        Width = 47
        Height = 15
        Anchors = [akTop, akRight]
        Caption = 'N'#250'mero:'
      end
      object Label27: TLabel
        Left = 418
        Top = 196
        Width = 34
        Height = 15
        Anchors = [akTop, akRight]
        Caption = 'Bairro:'
      end
      object Label28: TLabel
        Left = 3
        Top = 244
        Width = 40
        Height = 15
        Caption = 'Cidade:'
      end
      object Label29: TLabel
        Left = 220
        Top = 244
        Width = 17
        Height = 15
        Caption = 'UF:'
      end
      object Label30: TLabel
        Left = 274
        Top = 244
        Width = 55
        Height = 15
        Caption = 'C'#243'd. IBGE:'
      end
      object Label31: TLabel
        Left = 240
        Top = 54
        Width = 29
        Height = 15
        Anchors = [akTop, akRight]
        Caption = 'Fone:'
      end
      object Label37: TLabel
        Left = 2
        Top = 101
        Width = 116
        Height = 15
        Caption = 'Regime de tributa'#231#227'o:'
      end
      object Label38: TLabel
        Left = 172
        Top = 101
        Width = 161
        Height = 15
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Regime especial de tributa'#231#227'o:'
      end
      object edPrestadorCpfCnpj: TEdit
        Left = 3
        Top = 25
        Width = 163
        Height = 23
        ReadOnly = True
        TabOrder = 0
      end
      object edPrestadorNomeRazaoSocial: TEdit
        Left = 172
        Top = 25
        Width = 357
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        ReadOnly = True
        TabOrder = 1
      end
      object edPrestadorEmail: TEdit
        Left = 3
        Top = 72
        Width = 230
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        ReadOnly = True
        TabOrder = 2
      end
      object edPrestadorInscrMunicipal: TEdit
        Left = 392
        Top = 72
        Width = 137
        Height = 23
        Anchors = [akTop, akRight]
        ReadOnly = True
        TabOrder = 4
      end
      object edPrestadorCEP: TEdit
        Left = 3
        Top = 167
        Width = 133
        Height = 23
        ReadOnly = True
        TabOrder = 8
      end
      object edPrestadorLogradouro: TEdit
        Left = 3
        Top = 214
        Width = 339
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        ReadOnly = True
        TabOrder = 9
      end
      object edPrestadorNumero: TEdit
        Left = 351
        Top = 214
        Width = 59
        Height = 23
        Anchors = [akTop, akRight]
        ReadOnly = True
        TabOrder = 10
      end
      object edPrestadorBairro: TEdit
        Left = 418
        Top = 214
        Width = 109
        Height = 23
        Anchors = [akTop, akRight]
        ReadOnly = True
        TabOrder = 11
      end
      object edPrestadorCidade: TEdit
        Left = 3
        Top = 262
        Width = 211
        Height = 23
        ReadOnly = True
        TabOrder = 12
      end
      object edPrestadorUF: TEdit
        Left = 220
        Top = 262
        Width = 48
        Height = 23
        ReadOnly = True
        TabOrder = 13
      end
      object edPrestadorCodigoIBGE: TEdit
        Left = 274
        Top = 262
        Width = 101
        Height = 23
        ReadOnly = True
        TabOrder = 14
      end
      object edPrestadorFone: TEdit
        Left = 239
        Top = 72
        Width = 147
        Height = 23
        Anchors = [akTop, akRight]
        ReadOnly = True
        TabOrder = 3
      end
      object cbRegimeTributacao: TComboBox
        Left = 2
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
        Left = 172
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
        Left = 397
        Top = 123
        Width = 129
        Height = 17
        Anchors = [akTop, akRight]
        Caption = 'Simples nacional'
        TabOrder = 7
      end
    end
    object tsTomador: TTabSheet
      Caption = 'Tomador'
      ImageIndex = 1
      DesignSize = (
        540
        296)
      object Label5: TLabel
        Left = 3
        Top = 7
        Width = 62
        Height = 15
        Caption = 'CPF / CNPJ:'
      end
      object Label10: TLabel
        Left = 172
        Top = 7
        Width = 111
        Height = 15
        Caption = 'Nome / Raz'#227'o social:'
      end
      object Label11: TLabel
        Left = 3
        Top = 54
        Width = 37
        Height = 15
        Caption = 'E-mail:'
      end
      object Label9: TLabel
        Left = 392
        Top = 54
        Width = 87
        Height = 15
        Anchors = [akTop, akRight]
        Caption = 'Inscr. municipal:'
      end
      object Label1: TLabel
        Left = 3
        Top = 101
        Width = 24
        Height = 15
        Caption = 'CEP:'
      end
      object Label2: TLabel
        Left = 3
        Top = 148
        Width = 65
        Height = 15
        Caption = 'Logradouro:'
      end
      object Label3: TLabel
        Left = 351
        Top = 148
        Width = 47
        Height = 15
        Anchors = [akTop, akRight]
        Caption = 'N'#250'mero:'
      end
      object Label14: TLabel
        Left = 418
        Top = 148
        Width = 34
        Height = 15
        Anchors = [akTop, akRight]
        Caption = 'Bairro:'
      end
      object Label4: TLabel
        Left = 3
        Top = 196
        Width = 40
        Height = 15
        Caption = 'Cidade:'
      end
      object Label7: TLabel
        Left = 220
        Top = 196
        Width = 17
        Height = 15
        Caption = 'UF:'
      end
      object Label8: TLabel
        Left = 274
        Top = 196
        Width = 55
        Height = 15
        Caption = 'C'#243'd. IBGE:'
      end
      object Label6: TLabel
        Left = 240
        Top = 54
        Width = 29
        Height = 15
        Anchors = [akTop, akRight]
        Caption = 'Fone:'
      end
      object edTomadorCpfCnpj: TEdit
        Left = 3
        Top = 25
        Width = 163
        Height = 23
        ReadOnly = True
        TabOrder = 0
      end
      object edTomadorNomeRazaoSocial: TEdit
        Left = 172
        Top = 25
        Width = 357
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        ReadOnly = True
        TabOrder = 1
      end
      object edTomadorEmail: TEdit
        Left = 3
        Top = 72
        Width = 230
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        ReadOnly = True
        TabOrder = 2
      end
      object edTomadorInscrMunicipal: TEdit
        Left = 392
        Top = 72
        Width = 137
        Height = 23
        Anchors = [akTop, akRight]
        ReadOnly = True
        TabOrder = 4
      end
      object edTomadorCEP: TEdit
        Left = 3
        Top = 119
        Width = 133
        Height = 23
        ReadOnly = True
        TabOrder = 5
      end
      object edTomadorLogradouro: TEdit
        Left = 3
        Top = 166
        Width = 339
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        ReadOnly = True
        TabOrder = 6
      end
      object edTomadorNumero: TEdit
        Left = 351
        Top = 166
        Width = 59
        Height = 23
        Anchors = [akTop, akRight]
        ReadOnly = True
        TabOrder = 7
      end
      object edTomadorBairro: TEdit
        Left = 418
        Top = 166
        Width = 109
        Height = 23
        Anchors = [akTop, akRight]
        ReadOnly = True
        TabOrder = 8
      end
      object edTomadorCidade: TEdit
        Left = 3
        Top = 214
        Width = 211
        Height = 23
        ReadOnly = True
        TabOrder = 9
      end
      object edTomadorUF: TEdit
        Left = 220
        Top = 214
        Width = 48
        Height = 23
        ReadOnly = True
        TabOrder = 10
      end
      object edTomadorCodigoIBGE: TEdit
        Left = 274
        Top = 214
        Width = 101
        Height = 23
        ReadOnly = True
        TabOrder = 11
      end
      object edTomadorFone: TEdit
        Left = 239
        Top = 72
        Width = 147
        Height = 23
        Anchors = [akTop, akRight]
        ReadOnly = True
        TabOrder = 3
      end
    end
    object tsIntermediario: TTabSheet
      Caption = 'Intermedi'#225'rio'
      ImageIndex = 3
      DesignSize = (
        540
        296)
      object Label32: TLabel
        Left = 3
        Top = 7
        Width = 62
        Height = 15
        Caption = 'CPF / CNPJ:'
      end
      object Label33: TLabel
        Left = 172
        Top = 7
        Width = 111
        Height = 15
        Caption = 'Nome / Raz'#227'o social:'
      end
      object Label34: TLabel
        Left = 3
        Top = 54
        Width = 87
        Height = 15
        Anchors = [akTop, akRight]
        Caption = 'Inscr. municipal:'
      end
      object edIntermediarioCpfCnpj: TEdit
        Left = 3
        Top = 25
        Width = 163
        Height = 23
        ReadOnly = True
        TabOrder = 0
      end
      object edIntermediarioNomeRazaoSocial: TEdit
        Left = 172
        Top = 25
        Width = 357
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        ReadOnly = True
        TabOrder = 1
      end
      object edIntermediarioInscricaoMunicipal: TEdit
        Left = 3
        Top = 72
        Width = 137
        Height = 23
        Anchors = [akTop, akRight]
        ReadOnly = True
        TabOrder = 2
      end
    end
    object tsObra: TTabSheet
      Caption = 'Constru'#231#227'o Civil'
      ImageIndex = 4
      DesignSize = (
        540
        296)
      object Label35: TLabel
        Left = 3
        Top = 7
        Width = 87
        Height = 15
        Caption = 'C'#243'digo da Obra:'
      end
      object Label36: TLabel
        Left = 240
        Top = 7
        Width = 23
        Height = 15
        Caption = 'ART:'
      end
      object edCodigoObra: TEdit
        Left = 3
        Top = 25
        Width = 231
        Height = 23
        ReadOnly = True
        TabOrder = 0
      end
      object edART: TEdit
        Left = 240
        Top = 25
        Width = 289
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        ReadOnly = True
        TabOrder = 1
      end
    end
    object tsServico: TTabSheet
      Caption = 'Servi'#231'o'
      ImageIndex = 5
      DesignSize = (
        540
        296)
      object Label40: TLabel
        Left = 3
        Top = 5
        Width = 41
        Height = 15
        Caption = 'Servi'#231'o:'
      end
      object Label41: TLabel
        Left = 3
        Top = 102
        Width = 135
        Height = 15
        Caption = 'Discrimina'#231#227'o do servi'#231'o:'
      end
      object Label42: TLabel
        Left = 3
        Top = 55
        Width = 91
        Height = 15
        Caption = 'Item lista servi'#231'o:'
      end
      object Label43: TLabel
        Left = 3
        Top = 152
        Width = 65
        Height = 15
        Caption = 'Quantidade:'
      end
      object Label44: TLabel
        Left = 87
        Top = 152
        Width = 73
        Height = 15
        Caption = 'Valor unit'#225'rio:'
      end
      object Label45: TLabel
        Left = 196
        Top = 152
        Width = 56
        Height = 15
        Caption = 'Valor total:'
      end
      object cbServico: TComboBox
        Left = 3
        Top = 24
        Width = 518
        Height = 23
        Style = csDropDownList
        TabOrder = 0
        OnChange = cbServicoChange
      end
      object edServicoDiscriminacao: TEdit
        Left = 3
        Top = 123
        Width = 518
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        ReadOnly = True
        TabOrder = 2
      end
      object edServicoItemListaServico: TEdit
        Left = 3
        Top = 73
        Width = 91
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        ReadOnly = True
        TabOrder = 1
      end
      object edServicoQuantidade: TEdit
        Left = 3
        Top = 170
        Width = 78
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        ReadOnly = True
        TabOrder = 3
      end
      object edServicoValorUnitario: TEdit
        Left = 87
        Top = 170
        Width = 103
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        ReadOnly = True
        TabOrder = 4
      end
      object edServicoValorTotal: TEdit
        Left = 196
        Top = 170
        Width = 103
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        ReadOnly = True
        TabOrder = 5
      end
    end
    object tsMensagens: TTabSheet
      Caption = 'Mensagens'
      ImageIndex = 6
      object memoMensagens: TMemo
        Left = 0
        Top = 0
        Width = 540
        Height = 296
        Align = alClient
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
  end
  object btOk: TButton
    Left = 477
    Top = 340
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Ok'
    TabOrder = 1
    OnClick = btOkClick
  end
end
