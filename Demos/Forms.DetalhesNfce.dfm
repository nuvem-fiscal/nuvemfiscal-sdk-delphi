object fmDetalhesNfce: TfmDetalhesNfce
  Left = 0
  Top = 0
  Caption = 'NFC-e'
  ClientHeight = 372
  ClientWidth = 570
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  DesignSize = (
    570
    372)
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 6
    Top = 8
    Width = 542
    Height = 326
    ActivePage = tsDadosGerais
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    object tsDadosGerais: TTabSheet
      Caption = 'Dados gerais'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 534
        Height = 296
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 530
        ExplicitHeight = 295
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
          Width = 57
          Height = 15
          Caption = 'Valor Total:'
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
          Width = 92
          Height = 15
          Caption = 'Chave de Acesso:'
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
        object edValorTotal: TEdit
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
        object edChaveAcesso: TEdit
          Left = 6
          Top = 113
          Width = 524
          Height = 23
          ReadOnly = True
          TabOrder = 7
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
        object gbAutorizacao: TGroupBox
          Left = 6
          Top = 142
          Width = 524
          Height = 147
          Caption = 'Autoriza'#231#227'o'
          TabOrder = 8
          object Label46: TLabel
            Left = 14
            Top = 22
            Width = 48
            Height = 15
            Caption = 'Situa'#231#227'o:'
          end
          object Label47: TLabel
            Left = 14
            Top = 72
            Width = 64
            Height = 15
            Caption = 'Data / Hora:'
          end
          object Label48: TLabel
            Left = 160
            Top = 19
            Width = 127
            Height = 15
            Caption = 'Informa'#231#245'es Adicionais:'
          end
          object edAutorizacaoSituacao: TEdit
            Left = 14
            Top = 43
            Width = 115
            Height = 23
            ReadOnly = True
            TabOrder = 0
          end
          object edAutorizacaoDataHora: TEdit
            Left = 14
            Top = 93
            Width = 115
            Height = 23
            ReadOnly = True
            TabOrder = 1
          end
          object memoAutorizacaoInfo: TMemo
            Left = 160
            Top = 40
            Width = 353
            Height = 97
            ReadOnly = True
            ScrollBars = ssBoth
            TabOrder = 2
          end
        end
      end
    end
  end
  object btOk: TButton
    Left = 471
    Top = 340
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Ok'
    TabOrder = 1
    OnClick = btOkClick
    ExplicitLeft = 467
    ExplicitTop = 339
  end
end
