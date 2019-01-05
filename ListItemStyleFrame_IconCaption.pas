unit ListItemStyleFrame_IconCaption;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  BaseListItemStyleFrame, uSkinImageType, uSkinFireMonkeyImage, uSkinLabelType,
  uSkinFireMonkeyLabel, uSkinFireMonkeyControl, uSkinItemDesignerPanelType,
  uSkinFireMonkeyItemDesignerPanel;

type
  TFrameIconCaptionListItemStyle = class(TFrameBaseListItemStyle)
    imgItemIcon: TSkinFMXImage;
    procedure ItemDesignerPanelResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

{$R *.fmx}

uses
  uSkinCustomListType;



procedure TFrameIconCaptionListItemStyle.ItemDesignerPanelResize(
  Sender: TObject);
begin
  inherited;

  //ͼ��ĳߴ籣��������
  Self.imgItemIcon.Width:=Self.imgItemIcon.Height;

end;

initialization
  RegisterListItemStyle('IconCaption',TFrameIconCaptionListItemStyle);

finalization
  UnRegisterListItemStyle(TFrameIconCaptionListItemStyle);


end.
