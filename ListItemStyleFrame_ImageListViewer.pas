unit ListItemStyleFrame_ImageListViewer;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,

  uDrawCanvas,
  uSkinItems,

  ListItemStyleFrame_Base,
  uSkinLabelType, uSkinFireMonkeyLabel,
  uSkinFireMonkeyControl, uSkinItemDesignerPanelType,
  uSkinFireMonkeyItemDesignerPanel, uDrawPicture, uSkinImageList,
  uSkinButtonType, uSkinFireMonkeyButton, uSkinScrollControlType,
  uSkinImageListViewerType, uSkinFireMonkeyImageListViewer, uSkinPanelType,
  uSkinFireMonkeyPanel;

type
  TFrameImageListViewerListItemStyle = class(TFrameBaseListItemStyleBase)
    imgPlayer: TSkinFMXImageListViewer;
    bgIndicator: TSkinFMXButtonGroup;
    imglistPlayer: TSkinImageList;
    pnlBottomBar: TSkinFMXPanel;
    procedure ItemDesignerPanelPrepareDrawItem(Sender: TObject;
      ACanvas: TDrawCanvas; AItemDesignerPanel: TSkinItemDesignerPanel;
      AItem: TSkinItem; AItemDrawRect: TRectF);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameImageListViewerListItemStyle: TFrameImageListViewerListItemStyle;

implementation

{$R *.fmx}

uses
  uSkinCustomListType;

procedure TFrameImageListViewerListItemStyle.ItemDesignerPanelPrepareDrawItem(
  Sender: TObject; ACanvas: TDrawCanvas;
  AItemDesignerPanel: TSkinItemDesignerPanel; AItem: TSkinItem;
  AItemDrawRect: TRectF);
var
  I:Integer;
  ADrawPicture:TDrawPicture;
begin
  inherited;
  //����
  //ͼƬ�б��Url������Item.SubItems��

  if AItem.SubItems.Count>0 then
  begin
    imglistPlayer.PictureList.Clear(True);
    //���ͼƬ�ֲ�
    for I := 0 to AItem.SubItems.Count-1 do
    begin
      ADrawPicture:=Self.imglistPlayer.PictureList.Add;
      ADrawPicture.Url:=AItem.SubItems[I];
      //��������
      ADrawPicture.WebUrlPicture;
    end;
  end;

end;




initialization
  RegisterListItemStyle('ImageListViewer',TFrameImageListViewerListItemStyle);

finalization
  UnRegisterListItemStyle('ImageListViewer');

end.
