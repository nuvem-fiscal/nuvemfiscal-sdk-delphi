object fmEmitirNfce: TfmEmitirNfce
  Left = 0
  Top = 0
  Caption = 'Emitir NFC-e'
  ClientHeight = 461
  ClientWidth = 602
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  DesignSize = (
    602
    461)
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 5
    Top = 8
    Width = 581
    Height = 409
    ActivePage = tsDados
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    object tsDados: TTabSheet
      Caption = 'Dados'
      object pnCertificado: TPanel
        Left = 0
        Top = 0
        Width = 573
        Height = 379
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 557
        ExplicitHeight = 367
        object Label11: TLabel
          Left = 6
          Top = 6
          Width = 55
          Height = 15
          Caption = 'Ambiente:'
        end
        object cbAmbiente: TComboBox
          Left = 6
          Top = 24
          Width = 227
          Height = 23
          Style = csDropDownList
          TabOrder = 0
          Items.Strings = (
            'homologacao'
            'producao')
        end
        object GroupBox2: TGroupBox
          Left = 6
          Top = 233
          Width = 555
          Height = 136
          Caption = 'Produto'
          TabOrder = 1
          DesignSize = (
            555
            136)
          object Label42: TLabel
            Left = 11
            Top = 23
            Width = 34
            Height = 15
            Caption = 'cProd:'
          end
          object Label41: TLabel
            Left = 11
            Top = 73
            Width = 34
            Height = 15
            Caption = 'xProd:'
          end
          object Label5: TLabel
            Left = 108
            Top = 23
            Width = 32
            Height = 15
            Caption = 'cEAN:'
          end
          object Label7: TLabel
            Left = 205
            Top = 23
            Width = 31
            Height = 15
            Caption = 'NCM:'
          end
          object Label8: TLabel
            Left = 302
            Top = 23
            Width = 33
            Height = 15
            Caption = 'CFOP:'
          end
          object Label9: TLabel
            Left = 399
            Top = 23
            Width = 34
            Height = 15
            Caption = 'vProd:'
          end
          object edCProd: TEdit
            Left = 11
            Top = 44
            Width = 91
            Height = 23
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 0
          end
          object edXProd: TEdit
            Left = 11
            Top = 94
            Width = 479
            Height = 23
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 1
          end
          object edCEAN: TEdit
            Left = 108
            Top = 44
            Width = 91
            Height = 23
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 2
          end
          object edNCM: TEdit
            Left = 205
            Top = 44
            Width = 91
            Height = 23
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 3
          end
          object edCFOP: TEdit
            Left = 302
            Top = 44
            Width = 91
            Height = 23
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 4
          end
          object edVProd: TEdit
            Left = 399
            Top = 44
            Width = 91
            Height = 23
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 5
          end
        end
        object GroupBox3: TGroupBox
          Left = 6
          Top = 143
          Width = 555
          Height = 84
          Caption = 'Emitente'
          TabOrder = 2
          DesignSize = (
            555
            84)
          object Label3: TLabel
            Left = 11
            Top = 23
            Width = 62
            Height = 15
            Caption = 'CPF / CNPJ:'
          end
          object Label4: TLabel
            Left = 180
            Top = 23
            Width = 59
            Height = 15
            Caption = 'C'#243'digo UF:'
          end
          object edEmitenteCpfCnpj: TEdit
            Left = 11
            Top = 44
            Width = 163
            Height = 23
            MaxLength = 14
            NumbersOnly = True
            TabOrder = 0
          end
          object Edit3: TEdit
            Left = 284
            Top = -64
            Width = 357
            Height = 23
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 1
          end
          object edEmitenteCodigoUf: TEdit
            Left = 180
            Top = 44
            Width = 59
            Height = 23
            MaxLength = 2
            NumbersOnly = True
            TabOrder = 2
          end
        end
        object GroupBox4: TGroupBox
          Left = 6
          Top = 53
          Width = 555
          Height = 84
          Caption = 'Identifica'#231#227'o da NFC-e'
          TabOrder = 3
          DesignSize = (
            555
            84)
          object Label1: TLabel
            Left = 11
            Top = 23
            Width = 27
            Height = 15
            Caption = 'serie:'
          end
          object Label6: TLabel
            Left = 71
            Top = 23
            Width = 25
            Height = 15
            Caption = 'nNF:'
          end
          object Label2: TLabel
            Left = 169
            Top = 23
            Width = 48
            Height = 15
            Caption = 'cMunFG:'
          end
          object edSerie: TEdit
            Left = 11
            Top = 44
            Width = 54
            Height = 23
            MaxLength = 3
            NumbersOnly = True
            TabOrder = 0
          end
          object Edit2: TEdit
            Left = 284
            Top = -64
            Width = 357
            Height = 23
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 1
          end
          object edNumeroNota: TEdit
            Left = 71
            Top = 44
            Width = 92
            Height = 23
            MaxLength = 10
            NumbersOnly = True
            TabOrder = 2
          end
          object edCodigoMunicipioFatoGerador: TEdit
            Left = 169
            Top = 44
            Width = 92
            Height = 23
            MaxLength = 7
            NumbersOnly = True
            TabOrder = 3
          end
        end
      end
    end
    object tsLog: TTabSheet
      Caption = 'Log'
      ImageIndex = 1
      object memoLog: TMemo
        Left = 0
        Top = 0
        Width = 573
        Height = 379
        Align = alClient
        ScrollBars = ssBoth
        TabOrder = 0
        ExplicitWidth = 561
        ExplicitHeight = 367
      end
    end
  end
  object btCancelar: TButton
    Left = 511
    Top = 423
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 2
  end
  object btOk: TButton
    Left = 430
    Top = 423
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
