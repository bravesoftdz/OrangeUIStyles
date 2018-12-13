unit ListItemStyleFrame_PetchipArticle;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls,
  FMX.Forms, FMX.Dialogs, FMX.StdCtrls,

  uGraphicCommon,
  uSkinItems,
  ListItemStyleFrame_PetchipContent,

  uSkinMaterial, uSkinButtonType,
  uDrawPicture, uSkinImageList, uSkinPanelType, uSkinFireMonkeyPanel,
  uSkinScrollControlType, uSkinCustomListType, uSkinVirtualListType,
  uSkinListBoxType, uSkinFireMonkeyListBox, uSkinFireMonkeyButton,
  uSkinMultiColorLabelType, uSkinFireMonkeyMultiColorLabel, uSkinImageType,
  uSkinFireMonkeyImage, uSkinLabelType, uSkinFireMonkeyLabel,
  uSkinFireMonkeyControl, uSkinItemDesignerPanelType,
  uSkinFireMonkeyItemDesignerPanel;

type
  TFramePetchipArticleListItemStyle = class(TFramePetchipContentListItemStyle)
    lblItemDetail5: TSkinFMXLabel;
    lblExpand: TSkinFMXLabel;
    SkinFMXImage1: TSkinFMXImage;
  private
    { Private declarations }
//  public
//    //�����б���ĳߴ�
//    function CalcItemSize(ASkinVirtualList:TObject;
//                  AItem:TSkinItem;
//                  AItemDrawRect:TRect):TSizeF;override;
    { Public declarations }
  end;

var
  FramePetchipArticleListItemStyle: TFramePetchipArticleListItemStyle;

implementation

{$R *.fmx}

{ TFramePetchipArticleListItemStyle }

//function TFramePetchipArticleListItemStyle.CalcItemSize(
//  ASkinVirtualList: TObject; AItem: TSkinItem; AItemDrawRect: TRect): TSizeF;
//begin
//  Result.cx:=AItem.Width;
//  Result.cy:=AItem.Height;
//
//
//  //���óߴ�,��Ϊ��Щ�ؼ���Ҫ����
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
//end;

initialization
  RegisterListItemStyle('PetchipArticle',TFramePetchipArticleListItemStyle);


finalization
  UnRegisterListItemStyle('PetchipArticle');

end.
