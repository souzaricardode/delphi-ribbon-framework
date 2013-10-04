object FormEditImage: TFormEditImage
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Edit Image'
  ClientHeight = 384
  ClientWidth = 453
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 122
    Width = 453
    Height = 17
    Align = alBottom
    AutoSize = False
    Caption = '  Quick Tips'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitTop = 200
    ExplicitWidth = 645
  end
  object Label2: TLabel
    Left = 88
    Top = 10
    Width = 49
    Height = 13
    Caption = 'Image File'
  end
  object Label3: TLabel
    Left = 88
    Top = 38
    Width = 123
    Height = 13
    Caption = 'Minimum target resolution'
  end
  object Label6: TLabel
    Left = 88
    Top = 64
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Label7: TLabel
    Left = 88
    Top = 91
    Width = 34
    Height = 13
    Caption = 'Symbol'
  end
  object PanelImage: TPanel
    Left = 8
    Top = 8
    Width = 68
    Height = 68
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 0
    object PaintBox: TPaintBox
      Left = 0
      Top = 0
      Width = 64
      Height = 64
      Align = alClient
      OnPaint = PaintBoxPaint
      ExplicitLeft = -41
      ExplicitTop = -41
      ExplicitWidth = 105
      ExplicitHeight = 105
    end
  end
  object MemoHelp: TMemo
    AlignWithMargins = True
    Left = 8
    Top = 139
    Width = 437
    Height = 209
    Margins.Left = 8
    Margins.Top = 0
    Margins.Right = 8
    Margins.Bottom = 0
    Align = alBottom
    Color = clInfoBk
    Lines.Strings = (
      
        '1. When you specify an image file that is not available in the d' +
        'irectory containing the '
      
        'Ribbon file (or a subdirectory of this directory), then the imag' +
        'e will be copied to a "Res" '
      'subdirectory.'
      
        '2. For best results, regular image files should be 32-bit BMP or' +
        ' PNG files with an Alpha '
      
        'channel. The image will automatically be converted to a 32-bit B' +
        'MP file. If the image file '
      
        'is 24-bit or lower, to color of the lower-left pixel will be tre' +
        'ated as the transparent color.'
      
        '3. High-Contrast images should be 4-bit BMP files, where the Mag' +
        'enta color is treated as '
      'transparent.'
      
        '4. Small images should be 16x16 pixels, large images should be 3' +
        '2x32 pixels.'
      
        '5. For high-dpi support you can also add small images of size 20' +
        'x20 (120 dpi), 24x24 '
      '(144 dpi) or 32x32 (192 dpi).'
      
        '6. For high-dpi support you can also add large images of size 40' +
        'x40 (120 dpi), 48x48 '
      '(144 dpi) or 64x64 (192 dpi).'
      
        '7. See http://msdn.microsoft.com/en-us/library/dd316921(VS.85).a' +
        'spx for more tips in '
      'specifying ribbon images.')
    ReadOnly = True
    TabOrder = 1
  end
  object PanelButtons: TPanel
    Left = 0
    Top = 348
    Width = 453
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object ButtonOk: TButton
      Left = 289
      Top = 6
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      Enabled = False
      ModalResult = 1
      TabOrder = 0
    end
    object ButtonCancel: TButton
      Left = 370
      Top = 6
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object EditImageFile: TButtonedEdit
    Left = 223
    Top = 7
    Width = 222
    Height = 21
    Images = ImageList
    RightButton.HotImageIndex = 1
    RightButton.ImageIndex = 0
    RightButton.PressedImageIndex = 1
    RightButton.Visible = True
    TabOrder = 3
    OnChange = EditImageFileChange
    OnRightButtonClick = EditImageFileRightButtonClick
  end
  object ComboBoxMinDpi: TComboBox
    Left = 223
    Top = 34
    Width = 102
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 4
    Text = 'auto'
    Items.Strings = (
      'auto'
      '96 dpi'
      '120 dpi'
      '144 dpi'
      '192 dpi')
  end
  object EditResourceId: TEdit
    Left = 223
    Top = 61
    Width = 102
    Height = 21
    Hint = 
      'Numeric resource string identifier for the image. Use 0 for auto' +
      '-generated identifiers.'
    TabOrder = 5
    Text = '0'
  end
  object UpDownResourceId: TUpDown
    Left = 325
    Top = 61
    Width = 16
    Height = 21
    Associate = EditResourceId
    Max = 59999
    TabOrder = 6
    Thousands = False
  end
  object EditSymbol: TEdit
    Left = 223
    Top = 88
    Width = 102
    Height = 21
    Hint = 
      'Constant name for the resource identifier. If not specified, it ' +
      'is automatically generated.'
    TabOrder = 7
  end
  object ImageList: TImageList
    Left = 24
    Top = 20
    Bitmap = {
      494C0101020008002C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000075848F006C7A8500606D7700515D
      6600424C5400313A4100232A3000161C21000E1318000E1318000E1318000E13
      18000E1318000E1318000E1318000000000075848F0066808F0060798700576E
      7B004E626F0044566100394852002E3A4300252E35001B22290014191E000E12
      16000E1318000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000077879200A2DFF00070CDEA0049B8
      E20037AEDB002DA9D90026A1D2002198C700208EBC001E83AE00197FAB00157C
      A9001B779F001F729600161C2100000000007787920089A1AB006AB2D400008F
      CD00008FCD00008FCD00048CC7000888BE000F82B400157CA9001B779F001F72
      9600224B5C009BADB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007A8A9500AAE8F60095E5FC0084DF
      FB0075D6FA006AD0F7005DC6F40050BEF00041B4EC0035AAE8002BA4E600209A
      DF001690D7001B779F0020272D00000000007A8A95007EBED3008AA4AE007EDC
      FF005FCFFF0055CBFF004CC4FA0041BCF50037B3F0002EAAEB0024A0E500138C
      D400236780005E696D0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007D8E9800B0EAF6009FE9FB0092E4
      FC0081DDFB0075D6FA0068CEF7005DC6F4004DBCF00041B4EC0035AAE8002AA3
      E6001D96DC00157CA9002D343B00000000007D8E980079D2EC008BA4AD0089C2
      CE0071D8FF0065D3FF005CCEFF0051C9FE0049C1FA003FB9F50034B0EE0029A8
      E9001085CD00224B5B00B2C0C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080919C00B6EDF800AAECFB009BE8
      FB008FE3FC0081DDFB0071D5F90068CEF7005BC5F4004DBCF0003DB2EC0032A9
      E800249EE2001082B4003B434B000000000080919C0081D7EF007DC5E0008CA6
      B00080DDFE0068D3FF0067D4FF0062D1FF0058CDFF004EC7FC0046BEF7003BB6
      F20031ACEC00256981007A95A100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000083959F00BEF0F900ABF0F700A5EC
      FB0098E7FB0089E1FC007FDDFB0071D5F90065CDF70058C4F3004BBBF0003DB2
      EC002CA4E3000C8ABF0049535C000000000083959F0089DCF1008CE2FF008DA8
      B1008CBAC70074D8FF0067D4FF0067D4FF0067D4FF005FD0FF0054CDFF004BC5
      FC0041BBF7002EA2DB0051677400B2C0C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008699A300BEF0F900B6EDF800B0EE
      FA00A4EBFA0095E6FB0089E1FC007DDCFC0071D5F90065CDF70058C4F30049B9
      EF0035A9E7000C8FC70057636B0000000000869AA30092E1F20098E8FD0080C4
      DE008EA7B00081DEFD0084E0FF0084E0FF0084E0FF0084E0FF0081DFFF007BDD
      FF0074D8FF006BD6FF0056A9D1008F9BA4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000899CA600BEF0F900B6EDF800B6ED
      F800ABF0F700A2ECFA0095E6FB0089E1FC007DDCFC006FD3FA0063CCF70055C3
      F30049B9EF001999CF0063707A0000000000889CA5009AE6F3009FEBFB0098E8
      FE008BACB9008BACB9008AAAB70088A6B30086A3AF00839FAA00819AA6007F95
      A1007C919D007A8E9900798B9500778893000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008BA0A800BEF0F900BEF0F900BEF0
      F900BEF0F900B4F2F800AAECFB00A0E9FB0095E5FC008ADFFC007FD8FB0074D2
      F80068CAF4005DC0F10063707A00000000008BA0A800A0EAF600A6EEF9009FEB
      FB0098E8FE007ADAFF0067D4FF0067D4FF0067D4FF0067D4FF0067D4FF0067D4
      FF00778893000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008DA1AA008DA1AA008DA1AA008DA1
      AA008DA1AA008B9FA800899CA600899BA600879AA4008699A3008496A0008496
      A0008395A0008395A00075848F00000000008EA2AB00A7EEF600ABF0F700A6EE
      F9009FEBFB0098E8FD0071D4FB00899EA7008699A30082949F007E909A007A8C
      9700778893000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008FA4AC00B2E4EC00B6EDF800B6ED
      F800A9ECF60092E1F3008DA1AA00D5DCE0000000000000000000000000000000
      0000000000000000000000000000000000008FA4AC00A0D2DA00ABF0F700ABF0
      F700A6EEF9009FEBFB008DA1AA00D5DCE0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DADEE1008FA4AC008FA4AC008FA4
      AC008FA4AC008FA4AC00D5DCE000000000000000000000000000000000000000
      000000000000000000000000000000000000DADEE1008FA4AC008FA4AC008FA4
      AC008FA4AC008FA4AC00D5DCE000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      0001000700000000000100030000000000010003000000000001000100000000
      0001000100000000000100000000000000010000000000000001000000000000
      0001000700000000000100070000000000FF00FF0000000001FF01FF00000000
      FFFFFFFF00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object OpenDialog: TOpenDialog
    Filter = 'BMP and PNG files|*.bmp;*.png|BMP files|*.bmp|PNG files|*.png'
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Title = 'Open Image File'
    Left = 148
    Top = 61
  end
end
