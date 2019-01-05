unit ListItemStyleFrame_PetchipLost;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,

  uGraphicCommon,
  uSkinItems,
  uBufferBitmap,
  uSkinCustomListType,
  BaseListItemStyleFrame,
  ListItemStyleFrame_Base,

  uSkinLabelType, uSkinFireMonkeyLabel,
  uSkinFireMonkeyControl, uSkinItemDesignerPanelType,
  uSkinFireMonkeyItemDesignerPanel, uSkinImageType, uSkinFireMonkeyImage,
  FMX.Objects, uDrawPicture, uSkinImageList, uSkinPanelType,
  uSkinFireMonkeyPanel;

type
  TFramePetchipLostListItemStyle = class(TFrameBaseListItemStyleBase)
    imgItemPic: TSkinFMXImage;
    imgItemIcon: TSkinFMXImage;
    imglistPetTypeSex: TSkinImageList;
    lblItemDetail: TSkinFMXLabel;
    pnlTop: TSkinFMXPanel;
    pnlBottom: TSkinFMXPanel;
    lblItemDetail1Hint: TSkinFMXLabel;
    lblItemDetail1: TSkinFMXLabel;
    lblItemDetail2: TSkinFMXLabel;
    lblItemDetail3: TSkinFMXLabel;
    lblItemCaption1: TSkinFMXLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

{$R *.fmx}


initialization
  RegisterListItemStyle('PetchipLost',TFramePetchipLostListItemStyle);


finalization
  UnRegisterListItemStyle(TFramePetchipLostListItemStyle);


end.
