object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Nuvem Fiscal - Demo'
  ClientHeight = 568
  ClientWidth = 769
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  DesignSize = (
    769
    568)
  TextHeight = 15
  object Label1: TLabel
    Left = 16
    Top = 11
    Width = 48
    Height = 15
    Caption = 'Client ID:'
  end
  object Label2: TLabel
    Left = 16
    Top = 102
    Width = 30
    Height = 15
    Caption = 'CNPJ:'
  end
  object Label3: TLabel
    Left = 353
    Top = 102
    Width = 24
    Height = 15
    Caption = 'CEP:'
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
    Left = 516
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
  object edCnpj: TEdit
    Left = 56
    Top = 99
    Width = 145
    Height = 23
    TabOrder = 5
  end
  object btConsultarCnpj: TButton
    Left = 207
    Top = 98
    Width = 122
    Height = 25
    Caption = 'Consultar CNPJ'
    TabOrder = 6
    OnClick = btConsultarCnpjClick
  end
  object mmLog: TMemo
    Left = 16
    Top = 136
    Width = 734
    Height = 412
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 9
  end
  object edCep: TEdit
    Left = 384
    Top = 99
    Width = 145
    Height = 23
    TabOrder = 7
  end
  object btConsultarCep: TButton
    Left = 535
    Top = 98
    Width = 122
    Height = 25
    Caption = 'Consultar CEP'
    TabOrder = 8
    OnClick = btConsultarCepClick
  end
  object edClientSecret: TEdit
    Left = 408
    Top = 8
    Width = 214
    Height = 23
    Anchors = [akLeft, akTop, akRight]
    PasswordChar = '*'
    TabOrder = 1
  end
  object edToken: TEdit
    Left = 114
    Top = 40
    Width = 386
    Height = 23
    Anchors = [akLeft, akTop, akRight]
    ReadOnly = True
    TabOrder = 3
  end
  object btToken: TButton
    Left = 637
    Top = 7
    Width = 113
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Get Token'
    TabOrder = 2
    OnClick = btTokenClick
  end
  object edExpiracao: TEdit
    Left = 580
    Top = 40
    Width = 170
    Height = 23
    Anchors = [akTop, akRight]
    ReadOnly = True
    TabOrder = 4
  end
end
