object fmEmitirNfse: TfmEmitirNfse
  Left = 0
  Top = 0
  Caption = 'Emitir NFS-e'
  ClientHeight = 444
  ClientWidth = 590
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  DesignSize = (
    590
    444)
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 5
    Top = 8
    Width = 577
    Height = 397
    ActivePage = tsDados
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    object tsDados: TTabSheet
      Caption = 'Dados'
      object pnCertificado: TPanel
        Left = 0
        Top = 0
        Width = 569
        Height = 367
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
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
          Width = 132
          Height = 15
          Caption = 'CPF / CNPJ do Prestador:'
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
        object edPrestadorCpfCnpj: TEdit
          Left = 239
          Top = 24
          Width = 162
          Height = 23
          NumbersOnly = True
          TabOrder = 1
        end
        object GroupBox1: TGroupBox
          Left = 6
          Top = 53
          Width = 555
          Height = 84
          Caption = 'Tomador'
          TabOrder = 2
          DesignSize = (
            555
            84)
          object Label5: TLabel
            Left = 11
            Top = 23
            Width = 62
            Height = 15
            Caption = 'CPF / CNPJ:'
          end
          object Label10: TLabel
            Left = 180
            Top = 23
            Width = 111
            Height = 15
            Caption = 'Nome / Raz'#227'o social:'
          end
          object edTomadorCpfCnpj: TEdit
            Left = 11
            Top = 44
            Width = 163
            Height = 23
            TabOrder = 0
          end
          object edTomadorNomeRazaoSocial: TEdit
            Left = 180
            Top = 44
            Width = 357
            Height = 23
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 1
          end
        end
        object GroupBox2: TGroupBox
          Left = 6
          Top = 143
          Width = 555
          Height = 218
          Caption = 'Servi'#231'o'
          TabOrder = 3
          DesignSize = (
            555
            218)
          object Label42: TLabel
            Left = 11
            Top = 23
            Width = 91
            Height = 15
            Caption = 'Item lista servi'#231'o:'
          end
          object Label41: TLabel
            Left = 11
            Top = 73
            Width = 135
            Height = 15
            Caption = 'Discrimina'#231#227'o do servi'#231'o:'
          end
          object Label44: TLabel
            Left = 11
            Top = 123
            Width = 73
            Height = 15
            Caption = 'Valor unit'#225'rio:'
          end
          object edServicoItemListaServico: TEdit
            Left = 11
            Top = 44
            Width = 91
            Height = 23
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 0
          end
          object edServicoDiscriminacao: TEdit
            Left = 11
            Top = 94
            Width = 526
            Height = 23
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 1
          end
          object edServicoValorUnitario: TEdit
            Left = 11
            Top = 144
            Width = 108
            Height = 23
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 2
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
        Width = 569
        Height = 367
        Align = alClient
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
  end
  object btCancelar: TButton
    Left = 507
    Top = 411
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 2
  end
  object btOk: TButton
    Left = 426
    Top = 411
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
