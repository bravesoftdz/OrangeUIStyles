unit ListItemStyleFrame_IconCaption_BottomDetail_RightGrayDetail1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  BaseListItemStyleFrame, uSkinImageType, uSkinFireMonkeyImage, uSkinLabelType,
  uSkinFireMonkeyLabel, uSkinFireMonkeyControl, uSkinItemDesignerPanelType,
  uSkinFireMonkeyItemDesignerPanel;

type
  TFrameIconCaption_BottomDetail_RightGrayDetail1ListItemStyle = class(TFrameBaseListItemStyle)
    imgItemIcon: TSkinFMXImage;
    lblItemDetail: TSkinFMXLabel;
    lblItemDetail1: TSkinFMXLabel;
    procedure ItemDesignerPanelResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameIconCaption_BottomDetail_RightGrayDetail1ListItemStyle: TFrameIconCaption_BottomDetail_RightGrayDetail1ListItemStyle;

implementation

{$R *.fmx}

uses
  uSkinCustomListType;



procedure TFrameIconCaption_BottomDetail_RightGrayDetail1ListItemStyle.ItemDesignerPanelResize(
  Sender: TObject);
begin
  inherited;

  //图标的尺寸保持正方形
  Self.imgItemIcon.Width:=Self.imgItemIcon.Height;
end;

initialization
  RegisterListItemStyle('IconCaption_BottomDetail_RightGrayDetail1',TFrameIconCaption_BottomDetail_RightGrayDetail1ListItemStyle);

finalization
  UnRegisterListItemStyle('IconCaption_BottomDetail_RightGrayDetail1');


end.
