unit ListItemStyleFrame_PetchipContent;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,

  uGraphicCommon,
  uSkinItems,
  uBufferBitmap,
  BaseListItemStyleFrame,
  ListItemStyleFrame_Comment,
//  OrangeUICommonMaterialDataMoudle,
//  EasyServiceCommonMaterialDataMoudle,


  uSkinLabelType, uSkinFireMonkeyLabel,
  uSkinFireMonkeyControl, uSkinItemDesignerPanelType,
  uSkinFireMonkeyItemDesignerPanel, uSkinImageType, uSkinFireMonkeyImage,
  uSkinMultiColorLabelType, uSkinFireMonkeyMultiColorLabel, uSkinButtonType,
  uSkinFireMonkeyButton, uDrawCanvas, uDrawPicture, uSkinImageList,
  uSkinScrollControlType, uSkinCustomListType, uSkinVirtualListType,
  uSkinListBoxType, uSkinFireMonkeyListBox, uSkinMaterial,
  FMX.Controls.Presentation, uSkinPanelType, uSkinFireMonkeyPanel;

type
  TFramePetchipContentListItemStyle = class(TFrameBaseListItemStyle)
    imgItemIcon: TSkinFMXImage;
    lblItemDetail: TSkinFMXMultiColorLabel;
    imgItemBigPic: TSkinFMXImage;
    btnFocus: TSkinFMXButton;
    lblPetInfo: TSkinFMXMultiColorLabel;
    btnPicCount: TSkinFMXButton;
    imglistFoot: TSkinImageList;
    imgPetHead: TSkinFMXImage;
    SkinFMXImage2: TSkinFMXImage;
    lbCommentList: TSkinFMXListBox;
    lblCommentCount: TSkinFMXLabel;
    pnlButtons: TSkinFMXPanel;
    btnTransmit: TSkinFMXButton;
    lbLikeList: TSkinFMXListBox;
    btnLikeState: TSkinFMXButton;
    btnComment: TSkinFMXButton;
    btnFocused: TSkinFMXButton;
    btnFavState: TSkinFMXButton;
    procedure lbCommentListGetItemBufferCacheTag(Sender: TObject;
      AItem: TSkinItem; var ACacheTag: Integer);
  private
    { Private declarations }
  public
    //计算列表项的尺寸
//    function CalcItemSize(ASkinVirtualList:TObject;
//                  AItem:TSkinItem;
//                  AItemDrawRect:TRect):TSizeF;override;
    { Public declarations }
  end;


implementation

{$R *.fmx}

//uses
//  uSkinCustomListType;



{ TFramePetchipContentListItemStyle }

//function TFramePetchipContentListItemStyle.CalcItemSize(ASkinVirtualList:TObject;
//            AItem: TSkinItem;
//            AItemDrawRect:TRect): TSizeF;
//begin
//  Result.cx:=AItem.Width;
//  Result.cy:=AItem.Height;
//
//
//  //设置尺寸,因为有些控件需要拉抻
//  ItemDesignerPanel.Height:=ControlSize(RectHeightF(AItemDrawRect));
//  ItemDesignerPanel.Width:=ControlSize(RectWidthF(AItemDrawRect));
//
//  if Assigned(TSkinVirtualList(ASkinVirtualList).OnPrepareDrawItem) then
//  begin
//    TSkinVirtualList(ASkinVirtualList).OnPrepareDrawItem(
//          nil,
//          nil,
//          Self.ItemDesignerPanel,
//          AItem,
//          AItemDrawRect
//          );
//  end;
//
//
//  Result.cy:=
//    Self.lblCommentCount.Position.Y
//    +Self.lblCommentCount.Height
//    +10;
//
//end;

procedure TFramePetchipContentListItemStyle.lbCommentListGetItemBufferCacheTag(
  Sender: TObject; AItem: TSkinItem; var ACacheTag: Integer);
begin
  ACacheTag:=Integer(AItem);
end;

initialization
  RegisterListItemStyle('PetchipContent',TFramePetchipContentListItemStyle);


finalization
  UnRegisterListItemStyle(TFramePetchipContentListItemStyle);

end.
