unit ListItemStyleFrame_Comment;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  BaseListItemStyleFrame, uSkinMultiColorLabelType,
  uSkinFireMonkeyMultiColorLabel, uSkinLabelType, uSkinFireMonkeyLabel,
  uSkinFireMonkeyControl, uSkinItemDesignerPanelType,
  uSkinFireMonkeyItemDesignerPanel;

type
  TFrameCommentListItemStyle = class(TFrameBaseListItemStyle)
    lblComment: TSkinFMXMultiColorLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

{$R *.fmx}

uses
  uSkinCustomListType;



initialization
  RegisterListItemStyle('Comment',TFrameCommentListItemStyle);

finalization
  UnRegisterListItemStyle(TFrameCommentListItemStyle);

end.
