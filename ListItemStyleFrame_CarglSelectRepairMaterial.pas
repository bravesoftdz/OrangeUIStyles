unit ListItemStyleFrame_CarglSelectRepairMaterial;

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
  TFrameCarglSelectRepairMaterialListItemStyle = class(TFrameBaseListItemStyleBase)
    lblItemDetail: TSkinFMXLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameCarglSelectRepairMaterialListItemStyle: TFrameCarglSelectRepairMaterialListItemStyle;

implementation

{$R *.fmx}

initialization
  RegisterListItemStyle('CarglSelectRepairMaterial',TFrameCarglSelectRepairMaterialListItemStyle);


finalization
  UnRegisterListItemStyle('CarglSelectRepairMaterial');

end.
