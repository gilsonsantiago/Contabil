object frmContabilidade: TfrmContabilidade
  Left = 0
  Top = 0
  Caption = 'Sistema  de Contabilidade Pessoal (Partidas Dobradas).'
  ClientHeight = 473
  ClientWidth = 721
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 721
    Height = 432
    Align = alClient
    Caption = ' '
    TabOrder = 1
    ExplicitLeft = 56
    ExplicitTop = 40
    ExplicitWidth = 185
    ExplicitHeight = 105
  end
  object Panel1: TPanel
    Left = 0
    Top = 432
    Width = 721
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitLeft = 96
    ExplicitTop = 384
    ExplicitWidth = 185
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 384
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Configurao1: TMenuItem
        Caption = 'Configurar'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Usurios1: TMenuItem
        Caption = 'Usu'#225'rios'
      end
      object Empresa1: TMenuItem
        Caption = 'Empresa'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object PlanodeContas1: TMenuItem
        Caption = 'Plano de Contas'
      end
    end
    object Movimento1: TMenuItem
      Caption = 'Movimento'
      object Lancamentos1: TMenuItem
        Caption = 'Lancamentos '
      end
    end
  end
end
