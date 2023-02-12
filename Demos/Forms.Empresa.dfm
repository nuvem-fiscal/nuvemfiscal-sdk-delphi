object fmEmpresa: TfmEmpresa
  Left = 0
  Top = 0
  Caption = 'Empresa'
  ClientHeight = 351
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
    351)
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 6
    Top = 8
    Width = 544
    Height = 304
    ActivePage = tsEndereco
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    ExplicitHeight = 332
    object tsEndereco: TTabSheet
      Caption = 'Dados gerais'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 536
        Height = 274
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitHeight = 299
        DesignSize = (
          536
          274)
        object Label1: TLabel
          Left = 6
          Top = 109
          Width = 24
          Height = 15
          Caption = 'CEP:'
        end
        object Label2: TLabel
          Left = 6
          Top = 156
          Width = 65
          Height = 15
          Caption = 'Logradouro:'
        end
        object Label3: TLabel
          Left = 350
          Top = 156
          Width = 47
          Height = 15
          Anchors = [akTop, akRight]
          Caption = 'N'#250'mero:'
        end
        object Label4: TLabel
          Left = 6
          Top = 204
          Width = 40
          Height = 15
          Caption = 'Cidade:'
        end
        object Label7: TLabel
          Left = 223
          Top = 204
          Width = 17
          Height = 15
          Caption = 'UF:'
        end
        object Label8: TLabel
          Left = 277
          Top = 204
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
          Left = 239
          Top = 54
          Width = 78
          Height = 15
          Anchors = [akTop, akRight]
          Caption = 'Inscr. Estadual:'
          ExplicitLeft = 216
        end
        object Label9: TLabel
          Left = 391
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
        object Label14: TLabel
          Left = 417
          Top = 156
          Width = 34
          Height = 15
          Anchors = [akTop, akRight]
          Caption = 'Bairro:'
        end
        object edCEP: TEdit
          Left = 6
          Top = 127
          Width = 133
          Height = 23
          TabOrder = 5
        end
        object edLogradouro: TEdit
          Left = 6
          Top = 174
          Width = 335
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 7
        end
        object edNumero: TEdit
          Left = 350
          Top = 174
          Width = 59
          Height = 23
          Anchors = [akTop, akRight]
          TabOrder = 8
        end
        object edCidade: TEdit
          Left = 6
          Top = 222
          Width = 211
          Height = 23
          TabOrder = 10
        end
        object edUF: TEdit
          Left = 223
          Top = 222
          Width = 48
          Height = 23
          TabOrder = 11
        end
        object edCodigoIBGE: TEdit
          Left = 277
          Top = 222
          Width = 101
          Height = 23
          TabOrder = 12
        end
        object btBuscaCEP: TButton
          Left = 145
          Top = 126
          Width = 63
          Height = 25
          Caption = 'Busca'
          TabOrder = 6
        end
        object edCNPJ: TEdit
          Left = 6
          Top = 25
          Width = 163
          Height = 23
          TabOrder = 0
        end
        object edInscrEstadual: TEdit
          Left = 238
          Top = 72
          Width = 147
          Height = 23
          Anchors = [akTop, akRight]
          TabOrder = 3
          ExplicitLeft = 234
        end
        object edInscrMunicipal: TEdit
          Left = 391
          Top = 72
          Width = 137
          Height = 23
          Anchors = [akTop, akRight]
          TabOrder = 4
          ExplicitLeft = 387
        end
        object edRazaoSocial: TEdit
          Left = 175
          Top = 25
          Width = 353
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 1
          ExplicitWidth = 349
        end
        object edEmail: TEdit
          Left = 6
          Top = 72
          Width = 226
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 2
          ExplicitWidth = 222
        end
        object edBairro: TEdit
          Left = 417
          Top = 174
          Width = 109
          Height = 23
          Anchors = [akTop, akRight]
          TabOrder = 9
        end
      end
    end
  end
  object btCancelar: TButton
    Left = 471
    Top = 318
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 2
    ExplicitTop = 346
  end
  object btOk: TButton
    Left = 391
    Top = 318
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Ok'
    TabOrder = 1
    OnClick = btOkClick
    ExplicitTop = 346
  end
end
