object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Integra'#231#227'o SNGPC  2.0 - ANVISA'
  ClientHeight = 465
  ClientWidth = 462
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 3
    Top = 1
    Width = 454
    Height = 70
    Caption = 'Dados do RT'
    TabOrder = 0
    object edtemail: TLabeledEdit
      Left = 16
      Top = 36
      Width = 239
      Height = 21
      EditLabel.Width = 28
      EditLabel.Height = 13
      EditLabel.Caption = 'E-mail'
      TabOrder = 0
    end
    object edtsenha: TLabeledEdit
      Left = 263
      Top = 36
      Width = 175
      Height = 21
      EditLabel.Width = 30
      EditLabel.Height = 13
      EditLabel.Caption = 'Senha'
      PasswordChar = '*'
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 3
    Top = 76
    Width = 454
    Height = 59
    Caption = 'CNPJ da Loja'
    TabOrder = 1
    object edtcnpj: TLabeledEdit
      Left = 16
      Top = 23
      Width = 177
      Height = 21
      EditLabel.Width = 3
      EditLabel.Height = 13
      TabOrder = 0
    end
  end
  object GroupBox3: TGroupBox
    Left = 3
    Top = 140
    Width = 454
    Height = 318
    Caption = 'Fun'#231#245'es'
    TabOrder = 2
    object pgcFuncoes: TPageControl
      Left = 4
      Top = 22
      Width = 446
      Height = 290
      ActivePage = tbGeracao
      TabOrder = 0
      object tdStatus: TTabSheet
        Caption = 'Status do Envio'
        object GroupBox4: TGroupBox
          Left = 5
          Top = 54
          Width = 428
          Height = 200
          Caption = 'Retorno'
          TabOrder = 0
          object Memo1: TMemo
            Left = 6
            Top = 17
            Width = 416
            Height = 175
            BorderStyle = bsNone
            Color = clMoneyGreen
            ReadOnly = True
            TabOrder = 0
          end
        end
        object edthash: TLabeledEdit
          Left = 5
          Top = 22
          Width = 271
          Height = 21
          EditLabel.Width = 210
          EditLabel.Height = 13
          EditLabel.Caption = 'Informe o Hash do arquivo a ser consultado'
          TabOrder = 1
        end
        object btnconsultar: TButton
          Left = 282
          Top = 20
          Width = 137
          Height = 25
          Caption = 'Consultar'
          TabOrder = 2
          OnClick = btnconsultarClick
        end
      end
      object tbGeracao: TTabSheet
        Caption = 'Envio de Arquivo'
        ImageIndex = 1
        object edtarquivo: TLabeledEdit
          Left = 5
          Top = 20
          Width = 271
          Height = 21
          EditLabel.Width = 163
          EditLabel.Height = 13
          EditLabel.Caption = 'Caminho do arquivo a ser enviado'
          TabOrder = 0
        end
        object btnselecionar: TButton
          Left = 282
          Top = 18
          Width = 79
          Height = 25
          Caption = 'Selecionar'
          TabOrder = 1
          OnClick = btnselecionarClick
        end
        object GroupBox5: TGroupBox
          Left = 4
          Top = 52
          Width = 428
          Height = 200
          Caption = 'Retorno'
          TabOrder = 2
          object Memo2: TMemo
            Left = 7
            Top = 18
            Width = 413
            Height = 175
            BorderStyle = bsNone
            Color = clMoneyGreen
            ReadOnly = True
            TabOrder = 0
          end
        end
        object btnenviar: TButton
          Left = 362
          Top = 18
          Width = 69
          Height = 25
          Caption = 'Enviar'
          TabOrder = 3
          OnClick = btnenviarClick
        end
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 239
    Top = 254
  end
end
