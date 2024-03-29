object fmMain: TfmMain
  Left = 0
  Top = 0
  Caption = 'Nuvem Fiscal - Demo'
  ClientHeight = 570
  ClientWidth = 846
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  DesignSize = (
    846
    570)
  TextHeight = 15
  object Label1: TLabel
    Left = 16
    Top = 40
    Width = 48
    Height = 15
    Caption = 'Client ID:'
  end
  object Label4: TLabel
    Left = 328
    Top = 40
    Width = 69
    Height = 15
    Caption = 'Client Secret:'
  end
  object Label5: TLabel
    Left = 16
    Top = 69
    Width = 88
    Height = 15
    Caption = 'Token de acesso:'
  end
  object Label6: TLabel
    Left = 589
    Top = 69
    Width = 55
    Height = 15
    Anchors = [akTop, akRight]
    Caption = 'Expira em:'
    ExplicitLeft = 592
  end
  object Label9: TLabel
    Left = 18
    Top = 11
    Width = 21
    Height = 15
    Caption = 'API:'
  end
  object edClientId: TEdit
    Left = 72
    Top = 37
    Width = 249
    Height = 23
    TabOrder = 0
  end
  object edClientSecret: TEdit
    Left = 408
    Top = 37
    Width = 287
    Height = 23
    Anchors = [akLeft, akTop, akRight]
    PasswordChar = '*'
    TabOrder = 1
    ExplicitWidth = 283
  end
  object edToken: TEdit
    Left = 110
    Top = 66
    Width = 459
    Height = 23
    Anchors = [akLeft, akTop, akRight]
    ReadOnly = True
    TabOrder = 3
    ExplicitWidth = 455
  end
  object btToken: TButton
    Left = 701
    Top = 35
    Width = 114
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Get Token'
    TabOrder = 2
    OnClick = btTokenClick
    ExplicitLeft = 697
  end
  object edExpiracao: TEdit
    Left = 650
    Top = 66
    Width = 165
    Height = 23
    Anchors = [akTop, akRight]
    ReadOnly = True
    TabOrder = 4
    ExplicitLeft = 646
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 104
    Width = 830
    Height = 458
    ActivePage = tsNfse
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 5
    ExplicitWidth = 826
    ExplicitHeight = 457
    object tsConsultas: TTabSheet
      Caption = 'Consultas'
      DesignSize = (
        822
        428)
      object Label2: TLabel
        Left = 6
        Top = 12
        Width = 30
        Height = 15
        Caption = 'CNPJ:'
      end
      object Label3: TLabel
        Left = 343
        Top = 12
        Width = 24
        Height = 15
        Caption = 'CEP:'
      end
      object edCnpj: TEdit
        Left = 46
        Top = 9
        Width = 145
        Height = 23
        TabOrder = 0
      end
      object btConsultarCnpj: TButton
        Left = 197
        Top = 8
        Width = 122
        Height = 25
        Caption = 'Consultar CNPJ'
        TabOrder = 1
        OnClick = btConsultarCnpjClick
      end
      object mmLog: TMemo
        Left = 6
        Top = 42
        Width = 805
        Height = 376
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 2
      end
      object edCep: TEdit
        Left = 374
        Top = 9
        Width = 145
        Height = 23
        TabOrder = 3
      end
      object btConsultarCep: TButton
        Left = 525
        Top = 11
        Width = 122
        Height = 25
        Caption = 'Consultar CEP'
        TabOrder = 4
        OnClick = btConsultarCepClick
      end
    end
    object tsEmpresas: TTabSheet
      Caption = 'Empresas'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 687
        Top = 0
        Width = 135
        Height = 428
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          135
          428)
        object btAtualizarEmpresas: TButton
          Left = 2
          Top = 3
          Width = 129
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Atualizar lista'
          TabOrder = 0
          OnClick = btAtualizarEmpresasClick
        end
        object btCriarEmpresa: TButton
          Left = 3
          Top = 31
          Width = 129
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Criar nova'
          TabOrder = 1
          OnClick = btCriarEmpresaClick
        end
        object btAlterarEmpresa: TButton
          Left = 3
          Top = 58
          Width = 129
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Alterar'
          TabOrder = 2
          OnClick = btAlterarEmpresaClick
        end
        object btCertificado: TButton
          Left = 3
          Top = 85
          Width = 129
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Certificado'
          TabOrder = 3
          OnClick = btCertificadoClick
        end
        object btConfigNFSe: TButton
          Left = 3
          Top = 112
          Width = 129
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Configura'#231#227'o NFS-e'
          TabOrder = 4
          OnClick = btConfigNFSeClick
        end
        object btListarNfse: TButton
          Left = 3
          Top = 139
          Width = 129
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Listar NFS-e'
          TabOrder = 5
          OnClick = btListarNfseClick
        end
        object Button1: TButton
          Left = 3
          Top = 168
          Width = 129
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Configura'#231#227'o NFC-e'
          TabOrder = 6
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 3
          Top = 195
          Width = 129
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Listar NFC-e'
          TabOrder = 7
          OnClick = Button2Click
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 687
        Height = 428
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 3
        TabOrder = 1
        object lvEmpresas: TListView
          Left = 3
          Top = 3
          Width = 681
          Height = 422
          Align = alClient
          Columns = <
            item
              Caption = 'CNPJ'
              Width = 150
            end
            item
              Caption = 'Raz'#227'o social'
              Width = 350
            end>
          RowSelect = True
          TabOrder = 0
          ViewStyle = vsReport
          OnDblClick = lvEmpresasDblClick
        end
      end
    end
    object tsNfse: TTabSheet
      Caption = 'NFS-e'
      ImageIndex = 2
      object Panel4: TPanel
        Left = 687
        Top = 0
        Width = 135
        Height = 428
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitLeft = 683
        ExplicitHeight = 427
        DesignSize = (
          135
          428)
        object btEmitirNfse: TButton
          Left = 6
          Top = 41
          Width = 129
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Emitir NFSe'
          TabOrder = 0
          OnClick = btEmitirNfseClick
        end
        object btCancelarNfse: TButton
          Left = 6
          Top = 103
          Width = 129
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Cancelar'
          TabOrder = 1
          OnClick = btCancelarNfseClick
        end
        object btVerDetalhesNfse: TButton
          Left = 6
          Top = 72
          Width = 129
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Ver Detalhes'
          TabOrder = 2
          OnClick = btVerDetalhesNfseClick
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 687
        Height = 428
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitWidth = 683
        ExplicitHeight = 427
        object lvNfses: TListView
          Left = 0
          Top = 41
          Width = 687
          Height = 387
          Align = alClient
          Columns = <
            item
              Caption = 'ID'
            end
            item
              Caption = 'N'#176' Nota'
              Width = 75
            end
            item
              Caption = 'N'#176' RPS'
              Width = 75
            end
            item
              Caption = 'Situa'#231#227'o'
              Width = 100
            end
            item
              Caption = 'Data Emiss'#227'o'
              Width = 125
            end>
          RowSelect = True
          TabOrder = 0
          ViewStyle = vsReport
          OnDblClick = lvNfsesDblClick
          ExplicitWidth = 683
          ExplicitHeight = 386
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 687
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitWidth = 683
          object Label7: TLabel
            Left = 8
            Top = 13
            Width = 30
            Height = 15
            Caption = 'CNPJ:'
          end
          object btListaNfses: TButton
            Left = 342
            Top = 10
            Width = 96
            Height = 25
            Caption = 'Listar Notas'
            TabOrder = 0
            OnClick = btListaNfsesClick
          end
          object edNfseCnpj: TEdit
            Left = 44
            Top = 10
            Width = 145
            Height = 23
            TabOrder = 1
          end
          object cbNfseAmbiente: TComboBox
            Left = 195
            Top = 10
            Width = 139
            Height = 23
            Style = csDropDownList
            TabOrder = 2
            Items.Strings = (
              'homologacao'
              'producao')
          end
        end
      end
    end
    object tsNfce: TTabSheet
      Caption = 'NFC-e'
      ImageIndex = 3
      object Panel6: TPanel
        Left = 687
        Top = 0
        Width = 135
        Height = 428
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          135
          428)
        object btEmitirNfce: TButton
          Left = 6
          Top = 41
          Width = 129
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Emitir NFCe'
          TabOrder = 0
          OnClick = btEmitirNfceClick
        end
        object btCancelarNfce: TButton
          Left = 6
          Top = 103
          Width = 129
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Cancelar'
          TabOrder = 1
          OnClick = btCancelarNfceClick
        end
        object btVerDetalhesNfce: TButton
          Left = 6
          Top = 72
          Width = 129
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Ver Detalhes'
          TabOrder = 2
          OnClick = btVerDetalhesNfceClick
        end
        object btDownloadXmlNfce: TButton
          Left = 6
          Top = 134
          Width = 129
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Baixar XML'
          TabOrder = 3
          OnClick = btDownloadXmlNfceClick
        end
        object btDownloadPdfNfce: TButton
          Left = 6
          Top = 165
          Width = 129
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Baixar DANFCE'
          TabOrder = 4
          OnClick = btDownloadPdfNfceClick
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 687
        Height = 428
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object lvNfces: TListView
          Left = 0
          Top = 41
          Width = 687
          Height = 387
          Align = alClient
          Columns = <
            item
              Caption = 'ID'
            end
            item
              Caption = 'N'#176' Nota'
              Width = 75
            end
            item
              Caption = 'S'#233'rie'
              Width = 75
            end
            item
              Caption = 'Situa'#231#227'o'
              Width = 100
            end
            item
              Caption = 'Data Emiss'#227'o'
              Width = 125
            end
            item
              AutoSize = True
              Caption = 'Chave'
            end
            item
              Alignment = taRightJustify
              Caption = 'Valor'
              Width = 100
            end>
          RowSelect = True
          TabOrder = 0
          ViewStyle = vsReport
          OnDblClick = lvNfcesDblClick
        end
        object Panel8: TPanel
          Left = 0
          Top = 0
          Width = 687
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Label8: TLabel
            Left = 8
            Top = 13
            Width = 30
            Height = 15
            Caption = 'CNPJ:'
          end
          object btListaNfces: TButton
            Left = 342
            Top = 10
            Width = 96
            Height = 25
            Caption = 'Listar Notas'
            TabOrder = 0
            OnClick = btListaNfcesClick
          end
          object edNfceCnpj: TEdit
            Left = 44
            Top = 10
            Width = 145
            Height = 23
            TabOrder = 1
          end
          object cbNfceAmbiente: TComboBox
            Left = 195
            Top = 10
            Width = 139
            Height = 23
            Style = csDropDownList
            TabOrder = 2
            Items.Strings = (
              'homologacao'
              'producao')
          end
          object btConsultarStatusSefaz: TButton
            Left = 444
            Top = 10
            Width = 85
            Height = 25
            Caption = 'Status SEFAZ'
            TabOrder = 3
            OnClick = btConsultarStatusSefazClick
          end
          object btInutilizarNumeracaoNfce: TButton
            Left = 535
            Top = 10
            Width = 130
            Height = 25
            Caption = 'Inutilizar Numera'#231#227'o'
            TabOrder = 4
            OnClick = btInutilizarNumeracaoNfceClick
          end
        end
      end
    end
  end
  object cbAPI: TComboBox
    Left = 72
    Top = 8
    Width = 145
    Height = 23
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 6
    Text = 'Sandbox'
    OnChange = cbAPIChange
    Items.Strings = (
      'Sandbox'
      'Produ'#231#227'o')
  end
  object btListarCotas: TButton
    Left = 718
    Top = 95
    Width = 97
    Height = 25
    Caption = 'Listar Cotas'
    TabOrder = 7
    OnClick = btListarCotasClick
  end
end
