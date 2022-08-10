object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Nuvem Fiscal - Demo'
  ClientHeight = 571
  ClientWidth = 762
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  DesignSize = (
    762
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
    Left = 509
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
    Width = 207
    Height = 23
    Anchors = [akLeft, akTop, akRight]
    PasswordChar = '*'
    TabOrder = 1
    ExplicitWidth = 214
  end
  object edToken: TEdit
    Left = 114
    Top = 40
    Width = 379
    Height = 23
    Anchors = [akLeft, akTop, akRight]
    ReadOnly = True
    TabOrder = 3
    ExplicitWidth = 386
  end
  object btToken: TButton
    Left = 630
    Top = 7
    Width = 113
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Get Token'
    TabOrder = 2
    OnClick = btTokenClick
    ExplicitLeft = 637
  end
  object edExpiracao: TEdit
    Left = 573
    Top = 40
    Width = 170
    Height = 23
    Anchors = [akTop, akRight]
    ReadOnly = True
    TabOrder = 4
    ExplicitLeft = 580
  end
  object PageControl1: TPageControl
    Left = 16
    Top = 80
    Width = 727
    Height = 468
    ActivePage = TabSheet2
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 5
    object TabSheet1: TTabSheet
      Caption = 'Consultas'
      DesignSize = (
        719
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
        Width = 702
        Height = 386
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 2
        ExplicitWidth = 707
        ExplicitHeight = 383
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
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
    end
  end
end
