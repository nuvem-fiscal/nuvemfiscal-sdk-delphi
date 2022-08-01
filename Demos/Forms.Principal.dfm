object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Nuvem Fiscal - Demo'
  ClientHeight = 534
  ClientWidth = 780
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 16
    Top = 11
    Width = 34
    Height = 15
    Caption = 'Token:'
  end
  object Label2: TLabel
    Left = 16
    Top = 51
    Width = 30
    Height = 15
    Caption = 'CNPJ:'
  end
  object Label3: TLabel
    Left = 16
    Top = 291
    Width = 24
    Height = 15
    Caption = 'CEP:'
  end
  object edToken: TEdit
    Left = 56
    Top = 8
    Width = 265
    Height = 23
    TabOrder = 0
    OnChange = edTokenChange
  end
  object edCnpj: TEdit
    Left = 56
    Top = 48
    Width = 145
    Height = 23
    TabOrder = 1
  end
  object btConsultarCnpj: TButton
    Left = 207
    Top = 47
    Width = 122
    Height = 25
    Caption = 'Consultar CNPJ'
    TabOrder = 2
    OnClick = btConsultarCnpjClick
  end
  object Memo1: TMemo
    Left = 16
    Top = 88
    Width = 745
    Height = 185
    TabOrder = 3
  end
  object edCep: TEdit
    Left = 56
    Top = 288
    Width = 145
    Height = 23
    TabOrder = 4
  end
  object btConsultarCep: TButton
    Left = 207
    Top = 287
    Width = 122
    Height = 25
    Caption = 'Consultar CEP'
    TabOrder = 5
    OnClick = btConsultarCepClick
  end
end
