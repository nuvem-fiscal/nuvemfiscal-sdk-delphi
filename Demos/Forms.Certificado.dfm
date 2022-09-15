object fmCertificado: TfmCertificado
  Left = 0
  Top = 0
  Caption = 'Certificado'
  ClientHeight = 395
  ClientWidth = 622
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  DesignSize = (
    622
    395)
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 6
    Top = 41
    Width = 608
    Height = 317
    ActivePage = tsCertificado
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    ExplicitWidth = 611
    ExplicitHeight = 353
    object tsCertificado: TTabSheet
      Caption = 'Certificado'
      object pnCertificado: TPanel
        Left = 0
        Top = 0
        Width = 600
        Height = 287
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 603
        ExplicitHeight = 323
        DesignSize = (
          600
          287)
        object lbThumbprint: TLabel
          Left = 6
          Top = 52
          Width = 66
          Height = 15
          Caption = 'Thumbprint:'
        end
        object Label3: TLabel
          Left = 375
          Top = 52
          Width = 77
          Height = 15
          Anchors = [akTop, akRight]
          Caption = 'N'#250'mero serial:'
          ExplicitLeft = 378
        end
        object Label5: TLabel
          Left = 6
          Top = 103
          Width = 30
          Height = 15
          Caption = 'CNPJ:'
        end
        object Label6: TLabel
          Left = 376
          Top = 6
          Width = 73
          Height = 15
          Anchors = [akTop, akRight]
          Caption = 'Data emiss'#227'o:'
          ExplicitLeft = 372
        end
        object Label9: TLabel
          Left = 492
          Top = 6
          Width = 74
          Height = 15
          Anchors = [akTop, akRight]
          Caption = 'Data validade:'
          ExplicitLeft = 488
        end
        object Label10: TLabel
          Left = 173
          Top = 103
          Width = 67
          Height = 15
          Caption = 'Raz'#227'o social:'
        end
        object Label11: TLabel
          Left = 6
          Top = 6
          Width = 97
          Height = 15
          Caption = 'Nome do emissor:'
        end
        object Label1: TLabel
          Left = 6
          Top = 150
          Width = 42
          Height = 15
          Caption = 'Subject:'
        end
        object edThumbprint: TEdit
          Left = 6
          Top = 70
          Width = 363
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          ReadOnly = True
          TabOrder = 3
          ExplicitWidth = 366
        end
        object edNumeroSerial: TEdit
          Left = 375
          Top = 70
          Width = 215
          Height = 23
          Anchors = [akTop, akRight]
          ReadOnly = True
          TabOrder = 4
          ExplicitLeft = 378
        end
        object edCNPJ: TEdit
          Left = 6
          Top = 121
          Width = 157
          Height = 23
          ReadOnly = True
          TabOrder = 5
        end
        object edDataEmissao: TEdit
          Left = 375
          Top = 24
          Width = 107
          Height = 23
          Anchors = [akTop, akRight]
          ReadOnly = True
          TabOrder = 1
          ExplicitLeft = 378
        end
        object edDataValidade: TEdit
          Left = 492
          Top = 24
          Width = 98
          Height = 23
          Anchors = [akTop, akRight]
          ReadOnly = True
          TabOrder = 2
          ExplicitLeft = 495
        end
        object edRazaoSocial: TEdit
          Left = 173
          Top = 121
          Width = 417
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          ReadOnly = True
          TabOrder = 6
          ExplicitWidth = 420
        end
        object edEmissor: TEdit
          Left = 6
          Top = 24
          Width = 363
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          ReadOnly = True
          TabOrder = 0
          ExplicitWidth = 366
        end
        object mmSubject: TMemo
          Left = 6
          Top = 171
          Width = 584
          Height = 107
          Anchors = [akLeft, akTop, akRight, akBottom]
          ReadOnly = True
          TabOrder = 7
          ExplicitWidth = 587
          ExplicitHeight = 143
        end
      end
    end
  end
  object btFechar: TButton
    Left = 527
    Top = 364
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Fechar'
    ModalResult = 2
    TabOrder = 2
    ExplicitLeft = 519
    ExplicitTop = 354
  end
  object btAtualizarCertificado: TButton
    Left = 6
    Top = 7
    Width = 167
    Height = 25
    Caption = 'Atualizar certificado'
    TabOrder = 0
    OnClick = btAtualizarCertificadoClick
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '.pfx'
    Filter = 
      'Certificados (*.pfx, *.p12)|*.pfx;*.p12|Todos os arquivos (*.*)|' +
      ' *.*'
    Title = 'Selecione o certificado'
    Left = 240
    Top = 8
  end
end
