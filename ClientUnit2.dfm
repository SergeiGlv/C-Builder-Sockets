object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Sockets C++ Builder 11 Client'
  ClientHeight = 521
  ClientWidth = 315
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Edit1: TEdit
    Left = 16
    Top = 16
    Width = 121
    Height = 23
    TabOrder = 0
    Text = '127.0.0.1'
  end
  object SpinEdit1: TSpinEdit
    Left = 143
    Top = 16
    Width = 66
    Height = 24
    MaxValue = 0
    MinValue = 0
    TabOrder = 1
    Value = 65556
  end
  object Button1: TButton
    Left = 24
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Connect'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 24
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Disconnect'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Memo1: TMemo
    Left = 24
    Top = 168
    Width = 241
    Height = 89
    Lines.Strings = (
      '')
    TabOrder = 4
  end
  object Edit2: TEdit
    Left = 24
    Top = 272
    Width = 161
    Height = 23
    TabOrder = 5
  end
  object Button3: TButton
    Left = 203
    Top = 271
    Width = 75
    Height = 25
    Caption = 'Send'
    TabOrder = 6
    OnClick = Button3Click
  end
  object ClientSocket1: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 0
    OnConnect = ClientSocket1Connect
    OnDisconnect = ClientSocket1Disconnect
    Left = 200
    Top = 72
  end
end
