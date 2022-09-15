object fmMain: TfmMain
  Left = 0
  Top = 0
  Caption = 'Nuvem Fiscal - Demo'
  ClientHeight = 571
  ClientWidth = 853
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  DesignSize = (
    853
    571)
  TextHeight = 15
  object Label1: TLabel
    Left = 16
    Top = 11
    Width = 48
    Height = 15
    Caption = 'Client ID:'
  end
  object Label4: TLabel
    Left = 328
    Top = 11
    Width = 69
    Height = 15
    Caption = 'Client Secret:'
  end
  object Label5: TLabel
    Left = 16
    Top = 43
    Width = 88
    Height = 15
    Caption = 'Token de acesso:'
  end
  object Label6: TLabel
    Left = 600
    Top = 43
    Width = 55
    Height = 15
    Anchors = [akTop, akRight]
    Caption = 'Expira em:'
    ExplicitLeft = 512
  end
  object edClientId: TEdit
    Left = 72
    Top = 8
    Width = 249
    Height = 23
    TabOrder = 0
  end
  object edClientSecret: TEdit
    Left = 408
    Top = 8
    Width = 298
    Height = 23
    Anchors = [akLeft, akTop, akRight]
    PasswordChar = '*'
    TabOrder = 1
    ExplicitWidth = 207
  end
  object edToken: TEdit
    Left = 114
    Top = 40
    Width = 470
    Height = 23
    Anchors = [akLeft, akTop, akRight]
    ReadOnly = True
    TabOrder = 3
    ExplicitWidth = 379
  end
  object btToken: TButton
    Left = 721
    Top = 7
    Width = 113
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Get Token'
    TabOrder = 2
    OnClick = btTokenClick
    ExplicitLeft = 630
  end
  object edExpiracao: TEdit
    Left = 664
    Top = 40
    Width = 170
    Height = 23
    Anchors = [akTop, akRight]
    ReadOnly = True
    TabOrder = 4
    ExplicitLeft = 573
  end
  object PageControl1: TPageControl
    Left = 16
    Top = 80
    Width = 818
    Height = 468
    ActivePage = tsNfse
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 5
    ExplicitWidth = 727
    object tsConsultas: TTabSheet
      Caption = 'Consultas'
      DesignSize = (
        810
        438)
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
        Width = 793
        Height = 386
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 2
        ExplicitWidth = 702
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
        Top = 8
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
        Left = 675
        Top = 0
        Width = 135
        Height = 438
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitLeft = 584
        DesignSize = (
          135
          438)
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
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 675
        Height = 438
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 3
        TabOrder = 1
        ExplicitWidth = 584
        object lvEmpresas: TListView
          Left = 3
          Top = 3
          Width = 669
          Height = 432
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
          ExplicitWidth = 578
        end
      end
    end
    object tsNfse: TTabSheet
      Caption = 'NFS-e'
      ImageIndex = 2
      object Panel4: TPanel
        Left = 675
        Top = 0
        Width = 135
        Height = 438
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitLeft = 584
        DesignSize = (
          135
          438)
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
        Width = 675
        Height = 438
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitWidth = 584
        object lvNfses: TListView
          Left = 0
          Top = 41
          Width = 675
          Height = 397
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
            end
            item
              AutoSize = True
              Caption = 'Tomador do Servi'#231'o'
            end
            item
              Alignment = taRightJustify
              Caption = 'Valor'
              Width = 100
            end>
          RowSelect = True
          TabOrder = 0
          ViewStyle = vsReport
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 675
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitWidth = 584
          object Label7: TLabel
            Left = 8
            Top = 13
            Width = 30
            Height = 15
            Caption = 'CNPJ:'
          end
          object btListaNfses: TButton
            Left = 195
            Top = 9
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
        end
      end
    end
  end
end
