object frmContabilidade: TfrmContabilidade
  Left = 0
  Top = 0
  Caption = 'Sistema  de Contabilidade Pessoal (Partidas Dobradas).'
  ClientHeight = 533
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
    Height = 492
    Align = alClient
    TabOrder = 1
    ExplicitHeight = 472
  end
  object Panel1: TPanel
    Left = 0
    Top = 492
    Width = 721
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitTop = 472
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 272
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Configurao1: TMenuItem
        Caption = 'Configurar'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Competencias1: TMenuItem
        Caption = 'Competencias'
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object Usurios1: TMenuItem
        Caption = 'Usu'#225'rios'
        OnClick = Usurios1Click
      end
      object Empresa1: TMenuItem
        Caption = 'Empresa'
        OnClick = Empresa1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object PlanodeContas1: TMenuItem
        Caption = 'Plano de Contas'
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object SairdoSistema1: TMenuItem
        Caption = 'Sair do Sistema'
      end
    end
    object Movimento1: TMenuItem
      Caption = 'Movimento'
      object Lancamentos1: TMenuItem
        Caption = 'Lancamentos '
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object CaixaDiario1: TMenuItem
        Caption = 'Caixa Diario'
      end
      object Razo1: TMenuItem
        Caption = 'Raz'#227'o'
      end
      object Dirio1: TMenuItem
        Caption = 'Di'#225'rio'
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object Demonstrativo1: TMenuItem
        Caption = 'Demonstrativo'
      end
    end
  end
end
