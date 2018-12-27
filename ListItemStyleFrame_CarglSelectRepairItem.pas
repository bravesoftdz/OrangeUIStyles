unit ListItemStyleFrame_CarglSelectRepairItem;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,

  uSkinCustomListType,
  BaseListItemStyleFrame,

  ListItemStyleFrame_Base, uSkinLabelType, uSkinFireMonkeyLabel,
  uSkinFireMonkeyControl, uSkinItemDesignerPanelType,
  uSkinFireMonkeyItemDesignerPanel, uSkinMultiColorLabelType,
  uSkinFireMonkeyMultiColorLabel;

type
  TFrameCarglSelectRepairItemListItemStyle = class(TFrameBaseListItemStyleBase)
    lblItemDetail: TSkinFMXLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameCarglSelectRepairItemListItemStyle: TFrameCarglSelectRepairItemListItemStyle;

implementation

{$R *.fmx}

initialization
  RegisterListItemStyle('CarglSelectRepairItem',TFrameCarglSelectRepairItemListItemStyle);


finalization
  UnRegisterListItemStyle('CarglSelectRepairItem');

end.
