﻿//convert pas to utf8 by ¥

unit EasyServiceCommonMaterialDataMoudle;

interface

uses
  System.SysUtils, System.Classes, uSkinPanelType, uSkinMaterial,
  uSkinButtonType, uSkinEditType, uSkinScrollControlType, uSkinScrollBoxType,
  uSkinCheckBoxType, uDrawPicture, uSkinImageList, uSkinLabelType,

  uSkinImageType, uSkinFrameImageType, uSkinRadioButtonType,
  uSkinNotifyNumberIconType, uSkinCustomListType, uSkinVirtualListType,
  uSkinListBoxType, uSkinSwitchPageListPanelType, uSkinPageControlType,
  uSkinComboBoxType;

type
  TdmEasyServiceCommonMaterial = class(TDataModule)
    bdmReturnButton: TSkinButtonDefaultMaterial;
    pnlToolBarMaterial: TSkinPanelDefaultMaterial;
    edtHelpTextMaterial: TSkinEditDefaultMaterial;
    pnlBlackCaptionLeftMarginPanelMaterial: TSkinPanelDefaultMaterial;
    btnBlueColorButtonMaterial: TSkinButtonDefaultMaterial;
    lblNoticeTypeLabelMaterial: TSkinLabelDefaultMaterial;
    sbDefaultColorBackgroundScrollBoxMaterial: TSkinScrollBoxDefaultMaterial;
    btnRedColorButtonMaterial: TSkinButtonDefaultMaterial;
    pnlInputBlackCaptionPanelMaterial: TSkinPanelDefaultMaterial;
    btnOrangeRedBorderWhiteBackButtonMaterial: TSkinButtonDefaultMaterial;
    edtInputEditHasHelpTextMaterial: TSkinEditDefaultMaterial;
    chkDefaultCheckBoxMaterial: TSkinCheckBoxColorMaterial;
    btnGrayBorderButtonMaterial: TSkinButtonDefaultMaterial;
    btnTransparentWhiteCaptionButtonMaterial: TSkinButtonDefaultMaterial;
    btnRedBorderButtonMaterial: TSkinButtonDefaultMaterial;
    rbRedRadioButtonMaterial: TSkinRadioButtonColorMaterial;
    btnSelectButtonMaterial: TSkinButtonDefaultMaterial;
    pnlInputMemoBlackCaptionPanelMaterial: TSkinPanelDefaultMaterial;
    imglistBankIcon: TSkinImageList;
    edtSearchGoodsMaterial: TSkinEditDefaultMaterial;
    btnDeleteButtonMaterial: TSkinButtonDefaultMaterial;
    ilPictureList: TSkinImageList;
    btnIconButtonMaterial: TSkinButtonDefaultMaterial;
    btnSearchButtonMaterial: TSkinButtonDefaultMaterial;
    btnNoticeNotifyNumberIconMaterial: TSkinNotifyNumberIconColorMaterial;
    nniRedNotifyNumberMaterial: TSkinNotifyNumberIconDefaultMaterial;
    imgPayTypePicList: TSkinImageList;
    lbFilterHorzListBoxMaterial: TSkinListBoxDefaultMaterial;
    imgTakePicList: TSkinImageList;
    btnRedRectButtonMaterial: TSkinButtonDefaultMaterial;
    bgIndicator_Material: TSkinButtonGroupDefaultMaterial;
    pcMain_Material: TSkinPageControlDefaultMaterial;
    edtInputPhone_Material: TSkinEditDefaultMaterial;
    imgListLoginPictures: TSkinImageList;
    imgHeadList: TSkinImageList;
    edtInputEditHasCenterHelpTextMaterial: TSkinEditDefaultMaterial;
    btnGrayBorderSmallTextButtonMaterial: TSkinButtonDefaultMaterial;
    btnSelectButtonRightAlignMaterial: TSkinButtonDefaultMaterial;
    imglistSign: TSkinImageList;
    pcOrder_Material: TSkinPageControlDefaultMaterial;
    lbOrderList_Material: TSkinListBoxDefaultMaterial;
    imgHomeStarList: TSkinImageList;
    imglistMyCarBack: TSkinImageList;
    imgHomeIcons: TSkinImageList;
    imgShopListTakePicture: TSkinImageList;
    imgShopHomeList: TSkinImageList;
    Shopactivitylist: TSkinImageList;
    edtInputEditHasHelpTextAndIconMaterial: TSkinEditDefaultMaterial;
    cmbComboBox_Material: TSkinComboBoxDefaultMaterial;
    lblInputBlackCaptionPanelMaterial: TSkinLabelDefaultMaterial;
    btnTransparentIconButonMaterial: TSkinButtonDefaultMaterial;
  private
    { Private declarations }
  public
    constructor Create(AOwner:TComponent);override;
    { Public declarations }
  end;

var
  dmEasyServiceCommonMaterial: TdmEasyServiceCommonMaterial;

function GetBankIconIndex(ABankName:String):Integer;

implementation

uses
  uUIFunction;

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}


function GetBankIconIndex(ABankName:String):Integer;
begin
  Result:=0;
  if Pos('交通银行',ABankName)>0 then
  begin
    Result:=1;
  end;
  if Pos('兴业银行',ABankName)>0 then
  begin
    Result:=2;
  end;
  if Pos('工商银行',ABankName)>0 then
  begin
    Result:=3;
  end;
  if Pos('建设银行',ABankName)>0 then
  begin
    Result:=4;
  end;
  if Pos('农业银行',ABankName)>0 then
  begin
    Result:=5;
  end;
  if Pos('中国银行',ABankName)>0 then
  begin
    Result:=6;
  end;
end;


{ TdmEasyServiceCommonMaterial }

constructor TdmEasyServiceCommonMaterial.Create(AOwner: TComponent);
begin
  inherited;

  //工具栏
  Self.pnlToolBarMaterial.BackColor.FillColor.Color:=SkinThemeColor;

  //常用背景色按钮
  Self.btnRedColorButtonMaterial.BackColor.FillColor.Color:=SkinThemeColor1;
  Self.btnRedRectButtonMaterial.BackColor.FillColor.Color:=SkinThemeColor1;

  //常用边框按钮
  Self.btnRedBorderButtonMaterial.BackColor.BorderColor.Color:=SkinThemeColor;
  Self.btnRedBorderButtonMaterial.DrawCaptionParam.FontColor:=SkinThemeColor;

  Self.btnBlueColorButtonMaterial.BackColor.FillColor.Color:=SkinThemeColor;

  Self.btnGrayBorderSmallTextButtonMaterial.BackColor.BorderColor.Color:=SkinThemeColor;
  Self.btnGrayBorderSmallTextButtonMaterial.DrawCaptionParam.FontColor:=SkinThemeColor;

  //小标题直角边框按钮
  Self.btnOrangeRedBorderWhiteBackButtonMaterial.BackColor.BorderColor.Color:=SkinThemeColor;
  Self.btnOrangeRedBorderWhiteBackButtonMaterial.BackColor.FillColor.Color:=SkinThemeColor;
//  Self.btnOrangeRedBorderWhiteBackButtonMaterial.DrawCaptionParam.FontColor:=SkinThemeColor;

  //分类水平列表框
  Self.lbFilterHorzListBoxMaterial.DrawItemBackColorParam.DrawEffectSetting.PushedEffect.FillColor.Color:=SkinThemeColor;

  //复选框
  Self.chkDefaultCheckBoxMaterial.DrawCheckRectParam.DrawEffectSetting.PushedEffect.FillColor.Color:=SkinThemeColor;

  //单选框
  Self.rbRedRadioButtonMaterial.DrawCheckRectParam.DrawEffectSetting.PushedEffect.BorderColor.Color:=SkinThemeColor;
  Self.rbRedRadioButtonMaterial.DrawCheckStateParam.DrawEffectSetting.PushedEffect.FillColor.Color:=SkinThemeColor;


  //删除按钮
  Self.btnDeleteButtonMaterial.DrawCaptionParam.FontColor:=SkinThemeColor;


  //未读数按钮
  Self.btnNoticeNotifyNumberIconMaterial.DrawCaptionParam.FontColor:=SkinThemeColor;

//  //分页
//  Self.pcMain_Material.DrawTabCaptionParam.DrawEffectSetting.PushedEffect.FontColor.Color:=SkinThemeColor;

//  //分页
//  Self.edtInputPhone_Material.BackColor.BorderColor.Color:=SkinThemeColor;


end;

end.
