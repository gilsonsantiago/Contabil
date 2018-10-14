object frmCompetencia: TfrmCompetencia
  Left = 0
  Top = 0
  Caption = 'frmCompetencia'
  ClientHeight = 317
  ClientWidth = 495
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 495
    Height = 276
    Align = alClient
    Caption = ' '
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 491
      Height = 259
      Align = alClient
      DataSource = dModulo.DSCadCompetencia
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ano'
          Title.Alignment = taCenter
          Title.Caption = 'Ano'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'mes'
          Title.Alignment = taCenter
          Title.Caption = 'Mes'
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 276
    Width = 495
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    Caption = ' '
    TabOrder = 1
    object Button1: TButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Incluir'
      TabOrder = 0
    end
    object Button2: TButton
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 1
    end
    object Button3: TButton
      Left = 168
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 2
    end
    object Button4: TButton
      Left = 248
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Consultar'
      TabOrder = 3
    end
    object Button5: TButton
      Left = 328
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Selecionar'
      TabOrder = 4
    end
    object Button6: TButton
      Left = 409
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 5
    end
  end
end
