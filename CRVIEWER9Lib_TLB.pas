unit CRVIEWER9Lib_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : $Revision:   1.130  $
// File generated on 04/06/2009 09:29:09 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Arquivos de programas\Arquivos comuns\Crystal Decisions\2.0\crystalreportviewers\ActiveXViewer\crviewer9.dll (1)
// LIBID: {8767A745-088E-4CA6-8594-073D6D2DE57A}
// LCID: 0
// Helpfile: 
// DepndLst: 
//   (1) v2.0 stdole, (C:\WINDOWS\system32\stdole2.tlb)
//   (2) v4.0 StdVCL, (C:\WINDOWS\system32\stdvcl40.dll)
// Errors:
//   Hint: Member 'Type' of 'ICRVEventInfo' changed to 'Type_'
// ************************************************************************ //
// *************************************************************************//
// NOTE:                                                                      
// Items guarded by $IFDEF_LIVE_SERVER_AT_DESIGN_TIME are used by properties  
// which return objects that may need to be explicitly created via a function 
// call prior to any access via the property. These items have been disabled  
// in order to prevent accidental use from within the object inspector. You   
// may enable them by defining LIVE_SERVER_AT_DESIGN_TIME or by selectively   
// removing them from the $IFDEF blocks. However, such items must still be    
// programmatically created via a method of the appropriate CoClass before    
// they can be used.                                                          
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}

interface

uses ActiveX, Classes, Graphics, OleCtrls, OleServer, StdVCL, Variants, 
Windows;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  CRVIEWER9LibMajorVersion = 9;
  CRVIEWER9LibMinorVersion = 2;

  LIBID_CRVIEWER9Lib: TGUID = '{8767A745-088E-4CA6-8594-073D6D2DE57A}';

  DIID__ICRViewerEvents: TGUID = '{CFDF4A60-6FFC-11D1-BE46-00A0C95A6A5C}';
  IID_ICrystalReportViewer9: TGUID = '{3C9EEBE5-09AB-4EBB-9B42-A25FD57F19C0}';
  CLASS_CRViewer9: TGUID = '{2DEF4530-8CE6-41C9-84B6-A54536C90213}';
  IID_ICRVTrackCursorInfo: TGUID = '{13FA5946-561C-11D1-BE3F-00A0C95A6A5C}';
  CLASS_CRVTrackCursorInfo: TGUID = '{13FA5947-561C-11D1-BE3F-00A0C95A6A5C}';
  IID_ICRFields: TGUID = '{75C66E65-8949-11D2-BF6D-00A0C9DA4FA2}';
  IID_ICollectCRFields: TGUID = '{81CBB971-8E0A-11D2-BF71-00A0C9DA4FA2}';
  CLASS_CRFields: TGUID = '{75C66E66-8949-11D2-BF6D-00A0C9DA4FA2}';
  IID_ICRField: TGUID = '{75C66E67-8949-11D2-BF6D-00A0C9DA4FA2}';
  IID_IEnumCRFields: TGUID = '{9E088781-8E06-11D2-BF71-00A0C9DA4FA2}';
  CLASS_CRField: TGUID = '{75C66E68-8949-11D2-BF6D-00A0C9DA4FA2}';
  IID_ICRVEventInfo: TGUID = '{75347085-7260-11D1-BE46-00A0C95A6A5C}';
  CLASS_CRVEventInfo: TGUID = '{75347086-7260-11D1-BE46-00A0C95A6A5C}';
  IID_ICrystalReportViewerViewInfo: TGUID = '{04AA0267-F803-44DD-AA9B-D1265FCCF0F4}';
  CLASS_CRCrystalReportViewerViewInfo: TGUID = '{6197C192-EAD6-44F8-9A21-964E97249F4D}';
  IID_ICrystalReportSourceRouter: TGUID = '{A0E5F37D-CA67-11D1-A817-00A0C92784CD}';
  IID_ICrystalReportSourcePackage: TGUID = '{3DCC8FB1-C434-11D1-A817-00A0C92784CD}';
  CLASS_ReportSourceRouter: TGUID = '{A0E5F37E-CA67-11D1-A817-00A0C92784CD}';
  IID_IEnumCrystalReportSource: TGUID = '{3DCC8FB2-C434-11D1-A817-00A0C92784CD}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum CRLoadingType
type
  CRLoadingType = TOleEnum;
const
  crLoadingNothing = $00000000;
  crLoadingPages = $00000001;
  crLoadingTotaller = $00000002;
  crLoadingQueryInfo = $00000003;

// Constants for enum CRDrillType
type
  CRDrillType = TOleEnum;
const
  crDrillOnGroup = $00000000;
  crDrillOnGroupTree = $00000001;
  crDrillOnGraph = $00000002;
  crDrillOnMap = $00000003;
  crDrillOnSubreport = $00000004;

// Constants for enum CRTrackCursor
type
  CRTrackCursor = TOleEnum;
const
  crDefaultCursor = $00000000;
  crArrowCursor = $00000001;
  crCrossCursor = $00000002;
  crIBeamCursor = $00000003;
  crNoCursor = $0000000A;
  crWaitCursor = $0000000B;
  crAppStartingCursor = $0000000C;
  crHelpCursor = $0000000D;
  crMagnifyCursor = $00000063;

// Constants for enum CRFieldType
type
  CRFieldType = TOleEnum;
const
  crInt8 = $00000000;
  crInt16 = $00000001;
  crInt32 = $00000002;
  crNumber = $00000003;
  crCurrency = $00000004;
  crBoolean = $00000005;
  crDate = $00000006;
  crTime = $00000007;
  crDateTime = $00000008;
  crString = $00000009;
  crUnknownFieldType = $000000FF;

// Constants for enum CRObjectType
type
  CRObjectType = TOleEnum;
const
  crUnknownFieldDefType = $00000000;
  crDatabaseFieldType = $00000001;
  crOLAPDimensionFieldType = $00000002;
  crOLAPDataFieldType = $00000003;
  crOLAPCrossTabFieldType = $00000004;
  crFormulaFieldType = $00000005;
  crSummaryFieldType = $00000006;
  crSpecialVarFieldType = $00000007;
  crGroupNameFieldType = $00000008;
  crPromptingVarFieldType = $00000009;
  crText = $00000064;
  crOLEObject = $00000065;
  crSubreport = $00000066;
  crBitmap = $00000067;
  crBlob = $00000068;
  crLine = $00000069;
  crBox = $0000006A;
  crGroupChart = $0000006B;
  crCrosstabChart = $0000006C;
  crDetailChart = $0000006D;
  crCrossTab = $0000006E;
  crGraphic = $0000006F;
  crOOPSubreport = $00000070;
  crOLAPChart = $00000071;
  crGroupMap = $00000072;
  crCrosstabMap = $00000073;
  crDetailMap = $00000074;
  crOLAPMap = $00000075;
  crGroupHeaderSection = $000000C8;
  crGroupFooterSection = $000000C9;
  crDetailSection = $000000CA;
  crReportHeaderSection = $000000CB;
  crReportFooterSection = $000000CC;
  crPageHeaderSection = $000000CD;
  crPageFooterSection = $000000CE;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  _ICRViewerEvents = dispinterface;
  ICrystalReportViewer9 = interface;
  ICrystalReportViewer9Disp = dispinterface;
  ICRVTrackCursorInfo = interface;
  ICRVTrackCursorInfoDisp = dispinterface;
  ICRFields = interface;
  ICRFieldsDisp = dispinterface;
  ICollectCRFields = interface;
  ICRField = interface;
  ICRFieldDisp = dispinterface;
  IEnumCRFields = interface;
  ICRVEventInfo = interface;
  ICRVEventInfoDisp = dispinterface;
  ICrystalReportViewerViewInfo = interface;
  ICrystalReportSourceRouter = interface;
  ICrystalReportSourceRouterDisp = dispinterface;
  ICrystalReportSourcePackage = interface;
  IEnumCrystalReportSource = interface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  CRViewer9 = ICrystalReportViewer9;
  CRVTrackCursorInfo = ICRVTrackCursorInfo;
  CRFields = ICRFields;
  CRField = ICRField;
  CRVEventInfo = ICRVEventInfo;
  CRCrystalReportViewerViewInfo = ICrystalReportViewerViewInfo;
  ReportSourceRouter = ICrystalReportSourceRouter;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  POleVariant1 = ^OleVariant; {*}


// *********************************************************************//
// DispIntf:  _ICRViewerEvents
// Flags:     (4224) NonExtensible Dispatchable
// GUID:      {CFDF4A60-6FFC-11D1-BE46-00A0C95A6A5C}
// *********************************************************************//
  _ICRViewerEvents = dispinterface
    ['{CFDF4A60-6FFC-11D1-BE46-00A0C95A6A5C}']
    procedure CloseButtonClicked(var UseDefault: WordBool); dispid 401;
    procedure FirstPageButtonClicked(var UseDefault: WordBool); dispid 402;
    procedure LastPageButtonClicked(var UseDefault: WordBool); dispid 403;
    procedure PrevPageButtonClicked(var UseDefault: WordBool); dispid 404;
    procedure NextPageButtonClicked(var UseDefault: WordBool); dispid 405;
    procedure GoToPageNClicked(var UseDefault: WordBool; PageNumber: Smallint); dispid 406;
    procedure StopButtonClicked(loadingType: CRLoadingType; var UseDefault: WordBool); dispid 407;
    procedure RefreshButtonClicked(var UseDefault: WordBool); dispid 408;
    procedure PrintButtonClicked(var UseDefault: WordBool); dispid 409;
    procedure GroupTreeButtonClicked(Visible: WordBool); dispid 410;
    procedure ZoomLevelChanged(ZoomLevel: Smallint); dispid 411;
    procedure SearchButtonClicked(const searchText: WideString; var UseDefault: WordBool); dispid 412;
    procedure DrillOnGroup(var GroupNameList: OleVariant; DrillType: CRDrillType; 
                           var UseDefault: WordBool); dispid 413;
    procedure DrillOnDetail(var FieldValues: OleVariant; SelectedFieldIndex: Integer; 
                            var UseDefault: WordBool); dispid 414;
    procedure ShowGroup(var GroupNameList: OleVariant; var UseDefault: WordBool); dispid 415;
    procedure SelectionFormulaButtonClicked(out selctionFormula: WideString; 
                                            var UseDefault: WordBool); dispid 416;
    procedure SelectionFormulaBuilt(const selctionFormula: WideString; var UseDefault: WordBool); dispid 417;
    procedure Clicked(x: Integer; y: Integer; var EventInfo: OleVariant; var UseDefault: WordBool); dispid 418;
    procedure DblClicked(x: Integer; y: Integer; var EventInfo: OleVariant; var UseDefault: WordBool); dispid 419;
    procedure DownloadStarted(loadingType: CRLoadingType); dispid 420;
    procedure DownloadFinished(loadingType: CRLoadingType); dispid 421;
    procedure ViewChanging(oldViewIndex: Integer; newViewIndex: Integer); dispid 422;
    procedure ViewChanged(oldViewIndex: Integer; newViewIndex: Integer); dispid 423;
    procedure OnReportSourceError(const errorMsg: WideString; errorCode: Integer; 
                                  var UseDefault: WordBool); dispid 424;
    procedure ExportButtonClicked(var UseDefault: WordBool); dispid 425;
    procedure SearchExpertButtonClicked(var UseDefault: WordBool); dispid 426;
    procedure DrillOnGraph(PageNumber: Integer; x: Integer; y: Integer; var UseDefault: WordBool); dispid 427;
    procedure DrillOnSubreport(var GroupNameList: OleVariant; const SubreportName: WideString; 
                               const Title: WideString; PageNumber: Integer; Index: Integer; 
                               var UseDefault: WordBool); dispid 428;
    procedure HelpButtonClicked; dispid 429;
    procedure FocusChanged(hasFocus: WordBool); dispid 430;
    procedure OnContextMenu(ObjectDescription: OleVariant; x: Integer; y: Integer; 
                            var UseDefault: WordBool); dispid 431;
    procedure OnChangeObjectRect(ObjectDescription: OleVariant; x: Integer; y: Integer; 
                                 width: Integer; height: Integer); dispid 432;
    procedure OnLaunchHyperlink(var Hyperlink: WideString; var UseDefault: WordBool); dispid 433;
  end;

// *********************************************************************//
// Interface: ICrystalReportViewer9
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3C9EEBE5-09AB-4EBB-9B42-A25FD57F19C0}
// *********************************************************************//
  ICrystalReportViewer9 = interface(IDispatch)
    ['{3C9EEBE5-09AB-4EBB-9B42-A25FD57F19C0}']
    function  Get_ReportSource: IUnknown; safecall;
    procedure Set_ReportSource(const pVal: IUnknown); safecall;
    function  Get_DisplayGroupTree: WordBool; safecall;
    procedure Set_DisplayGroupTree(DisplayGroupTree: WordBool); safecall;
    function  Get_DisplayToolbar: WordBool; safecall;
    procedure Set_DisplayToolbar(DisplayToolbar: WordBool); safecall;
    function  Get_EnableGroupTree: WordBool; safecall;
    procedure Set_EnableGroupTree(EnableGroupTree: WordBool); safecall;
    function  Get_EnableNavigationControls: WordBool; safecall;
    procedure Set_EnableNavigationControls(EnableNavigationControls: WordBool); safecall;
    function  Get_EnableStopButton: WordBool; safecall;
    procedure Set_EnableStopButton(EnableStopButton: WordBool); safecall;
    function  Get_EnablePrintButton: WordBool; safecall;
    procedure Set_EnablePrintButton(EnablePrintButton: WordBool); safecall;
    function  Get_EnableZoomControl: WordBool; safecall;
    procedure Set_EnableZoomControl(EnableZoomControl: WordBool); safecall;
    function  Get_EnableCloseButton: WordBool; safecall;
    procedure Set_EnableCloseButton(EnableCloseButton: WordBool); safecall;
    function  Get_EnableProgressControl: WordBool; safecall;
    procedure Set_EnableProgressControl(EnableProgressControl: WordBool); safecall;
    function  Get_EnableSearchControl: WordBool; safecall;
    procedure Set_EnableSearchControl(EnableSearchControl: WordBool); safecall;
    function  Get_EnableRefreshButton: WordBool; safecall;
    procedure Set_EnableRefreshButton(EnableRefreshButton: WordBool); safecall;
    function  Get_EnableDrillDown: WordBool; safecall;
    procedure Set_EnableDrillDown(EnableDrillDown: WordBool); safecall;
    function  Get_EnableAnimationCtrl: WordBool; safecall;
    procedure Set_EnableAnimationCtrl(EnableAnimationCtrl: WordBool); safecall;
    function  Get_EnableSelectExpertButton: WordBool; safecall;
    procedure Set_EnableSelectExpertButton(EnableSelectExpertButton: WordBool); safecall;
    procedure ViewReport; safecall;
    function  Get_EnableToolbar: WordBool; safecall;
    procedure Set_EnableToolbar(pVal: WordBool); safecall;
    function  Get_DisplayBorder: WordBool; safecall;
    procedure Set_DisplayBorder(pVal: WordBool); safecall;
    function  Get_DisplayTabs: WordBool; safecall;
    procedure Set_DisplayTabs(pVal: WordBool); safecall;
    function  Get_DisplayBackgroundEdge: WordBool; safecall;
    procedure Set_DisplayBackgroundEdge(pVal: WordBool); safecall;
    function  Get_SelectionFormula: WideString; safecall;
    procedure Set_SelectionFormula(const pVal: WideString); safecall;
    function  Get_TrackCursorInfo: ICRVTrackCursorInfo; safecall;
    function  Get_ActiveViewIndex: Smallint; safecall;
    function  Get_ViewCount: Smallint; safecall;
    procedure ActivateView(Index: OleVariant); safecall;
    procedure AddView(GroupPath: OleVariant); safecall;
    procedure CloseView(Index: OleVariant); safecall;
    function  GetViewPath(Index: Smallint): OleVariant; safecall;
    procedure PrintReport; safecall;
    procedure Refresh; safecall;
    procedure SearchForText(const Text: WideString); safecall;
    procedure ShowFirstPage; safecall;
    procedure ShowNextPage; safecall;
    procedure ShowPreviousPage; safecall;
    procedure ShowLastPage; safecall;
    procedure ShowNthPage(PageNumber: Smallint); safecall;
    procedure Zoom(ZoomLevel: Smallint); safecall;
    function  GetCurrentPageNumber: Integer; safecall;
    procedure ShowGroup(GroupPath: OleVariant); safecall;
    function  Get_IsBusy: WordBool; safecall;
    function  Get_EnablePopupMenu: WordBool; safecall;
    procedure Set_EnablePopupMenu(pVal: WordBool); safecall;
    function  Get_EnableExportButton: WordBool; safecall;
    procedure Set_EnableExportButton(pVal: WordBool); safecall;
    function  Get_EnableSearchExpertButton: WordBool; safecall;
    procedure Set_EnableSearchExpertButton(pVal: WordBool); safecall;
    procedure SearchByFormula(const formula: WideString); safecall;
    function  GetViewName(out pTabName: WideString): WideString; safecall;
    function  Get_EnableHelpButton: WordBool; safecall;
    procedure Set_EnableHelpButton(pVal: WordBool); safecall;
    function  GetGroup: OleVariant; safecall;
    procedure GetLastPageNumber(out pageN: Integer; out lastPageKnown: WordBool); safecall;
    procedure RefreshEx(refreshServerData: WordBool); safecall;
    function  Get_LaunchHTTPHyperlinksInNewBrowser: WordBool; safecall;
    procedure Set_LaunchHTTPHyperlinksInNewBrowser(pVal: WordBool); safecall;
    property ReportSource: IUnknown read Get_ReportSource write Set_ReportSource;
    property DisplayGroupTree: WordBool read Get_DisplayGroupTree write Set_DisplayGroupTree;
    property DisplayToolbar: WordBool read Get_DisplayToolbar write Set_DisplayToolbar;
    property EnableGroupTree: WordBool read Get_EnableGroupTree write Set_EnableGroupTree;
    property EnableNavigationControls: WordBool read Get_EnableNavigationControls write Set_EnableNavigationControls;
    property EnableStopButton: WordBool read Get_EnableStopButton write Set_EnableStopButton;
    property EnablePrintButton: WordBool read Get_EnablePrintButton write Set_EnablePrintButton;
    property EnableZoomControl: WordBool read Get_EnableZoomControl write Set_EnableZoomControl;
    property EnableCloseButton: WordBool read Get_EnableCloseButton write Set_EnableCloseButton;
    property EnableProgressControl: WordBool read Get_EnableProgressControl write Set_EnableProgressControl;
    property EnableSearchControl: WordBool read Get_EnableSearchControl write Set_EnableSearchControl;
    property EnableRefreshButton: WordBool read Get_EnableRefreshButton write Set_EnableRefreshButton;
    property EnableDrillDown: WordBool read Get_EnableDrillDown write Set_EnableDrillDown;
    property EnableAnimationCtrl: WordBool read Get_EnableAnimationCtrl write Set_EnableAnimationCtrl;
    property EnableSelectExpertButton: WordBool read Get_EnableSelectExpertButton write Set_EnableSelectExpertButton;
    property EnableToolbar: WordBool read Get_EnableToolbar write Set_EnableToolbar;
    property DisplayBorder: WordBool read Get_DisplayBorder write Set_DisplayBorder;
    property DisplayTabs: WordBool read Get_DisplayTabs write Set_DisplayTabs;
    property DisplayBackgroundEdge: WordBool read Get_DisplayBackgroundEdge write Set_DisplayBackgroundEdge;
    property SelectionFormula: WideString read Get_SelectionFormula write Set_SelectionFormula;
    property TrackCursorInfo: ICRVTrackCursorInfo read Get_TrackCursorInfo;
    property ActiveViewIndex: Smallint read Get_ActiveViewIndex;
    property ViewCount: Smallint read Get_ViewCount;
    property IsBusy: WordBool read Get_IsBusy;
    property EnablePopupMenu: WordBool read Get_EnablePopupMenu write Set_EnablePopupMenu;
    property EnableExportButton: WordBool read Get_EnableExportButton write Set_EnableExportButton;
    property EnableSearchExpertButton: WordBool read Get_EnableSearchExpertButton write Set_EnableSearchExpertButton;
    property EnableHelpButton: WordBool read Get_EnableHelpButton write Set_EnableHelpButton;
    property LaunchHTTPHyperlinksInNewBrowser: WordBool read Get_LaunchHTTPHyperlinksInNewBrowser write Set_LaunchHTTPHyperlinksInNewBrowser;
  end;

// *********************************************************************//
// DispIntf:  ICrystalReportViewer9Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3C9EEBE5-09AB-4EBB-9B42-A25FD57F19C0}
// *********************************************************************//
  ICrystalReportViewer9Disp = dispinterface
    ['{3C9EEBE5-09AB-4EBB-9B42-A25FD57F19C0}']
    property ReportSource: IUnknown dispid 250;
    property DisplayGroupTree: WordBool dispid 251;
    property DisplayToolbar: WordBool dispid 252;
    property EnableGroupTree: WordBool dispid 253;
    property EnableNavigationControls: WordBool dispid 254;
    property EnableStopButton: WordBool dispid 255;
    property EnablePrintButton: WordBool dispid 256;
    property EnableZoomControl: WordBool dispid 257;
    property EnableCloseButton: WordBool dispid 258;
    property EnableProgressControl: WordBool dispid 259;
    property EnableSearchControl: WordBool dispid 260;
    property EnableRefreshButton: WordBool dispid 261;
    property EnableDrillDown: WordBool dispid 262;
    property EnableAnimationCtrl: WordBool dispid 263;
    property EnableSelectExpertButton: WordBool dispid 264;
    procedure ViewReport; dispid 265;
    property EnableToolbar: WordBool dispid 340;
    property DisplayBorder: WordBool dispid 341;
    property DisplayTabs: WordBool dispid 342;
    property DisplayBackgroundEdge: WordBool dispid 343;
    property SelectionFormula: WideString dispid 344;
    property TrackCursorInfo: ICRVTrackCursorInfo readonly dispid 345;
    property ActiveViewIndex: Smallint readonly dispid 346;
    property ViewCount: Smallint readonly dispid 347;
    procedure ActivateView(Index: OleVariant); dispid 348;
    procedure AddView(GroupPath: OleVariant); dispid 349;
    procedure CloseView(Index: OleVariant); dispid 350;
    function  GetViewPath(Index: Smallint): OleVariant; dispid 351;
    procedure PrintReport; dispid 352;
    procedure Refresh; dispid 353;
    procedure SearchForText(const Text: WideString); dispid 354;
    procedure ShowFirstPage; dispid 355;
    procedure ShowNextPage; dispid 356;
    procedure ShowPreviousPage; dispid 357;
    procedure ShowLastPage; dispid 358;
    procedure ShowNthPage(PageNumber: Smallint); dispid 359;
    procedure Zoom(ZoomLevel: Smallint); dispid 360;
    function  GetCurrentPageNumber: Integer; dispid 361;
    procedure ShowGroup(GroupPath: OleVariant); dispid 362;
    property IsBusy: WordBool readonly dispid 363;
    property EnablePopupMenu: WordBool dispid 364;
    property EnableExportButton: WordBool dispid 365;
    property EnableSearchExpertButton: WordBool dispid 367;
    procedure SearchByFormula(const formula: WideString); dispid 368;
    function  GetViewName(out pTabName: WideString): WideString; dispid 369;
    property EnableHelpButton: WordBool dispid 370;
    function  GetGroup: OleVariant; dispid 400;
    procedure GetLastPageNumber(out pageN: Integer; out lastPageKnown: WordBool); dispid 401;
    procedure RefreshEx(refreshServerData: WordBool); dispid 402;
    property LaunchHTTPHyperlinksInNewBrowser: WordBool dispid 500;
  end;

// *********************************************************************//
// Interface: ICRVTrackCursorInfo
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {13FA5946-561C-11D1-BE3F-00A0C95A6A5C}
// *********************************************************************//
  ICRVTrackCursorInfo = interface(IDispatch)
    ['{13FA5946-561C-11D1-BE3F-00A0C95A6A5C}']
    function  Get_DetailAreaCursor: CRTrackCursor; safecall;
    procedure Set_DetailAreaCursor(pVal: CRTrackCursor); safecall;
    function  Get_DetailAreaFieldCursor: CRTrackCursor; safecall;
    procedure Set_DetailAreaFieldCursor(pVal: CRTrackCursor); safecall;
    function  Get_GraphCursor: CRTrackCursor; safecall;
    procedure Set_GraphCursor(pVal: CRTrackCursor); safecall;
    function  Get_GroupAreaCursor: CRTrackCursor; safecall;
    procedure Set_GroupAreaCursor(pVal: CRTrackCursor); safecall;
    function  Get_GroupAreaFieldCursor: CRTrackCursor; safecall;
    procedure Set_GroupAreaFieldCursor(pVal: CRTrackCursor); safecall;
    property DetailAreaCursor: CRTrackCursor read Get_DetailAreaCursor write Set_DetailAreaCursor;
    property DetailAreaFieldCursor: CRTrackCursor read Get_DetailAreaFieldCursor write Set_DetailAreaFieldCursor;
    property GraphCursor: CRTrackCursor read Get_GraphCursor write Set_GraphCursor;
    property GroupAreaCursor: CRTrackCursor read Get_GroupAreaCursor write Set_GroupAreaCursor;
    property GroupAreaFieldCursor: CRTrackCursor read Get_GroupAreaFieldCursor write Set_GroupAreaFieldCursor;
  end;

// *********************************************************************//
// DispIntf:  ICRVTrackCursorInfoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {13FA5946-561C-11D1-BE3F-00A0C95A6A5C}
// *********************************************************************//
  ICRVTrackCursorInfoDisp = dispinterface
    ['{13FA5946-561C-11D1-BE3F-00A0C95A6A5C}']
    property DetailAreaCursor: CRTrackCursor dispid 1;
    property DetailAreaFieldCursor: CRTrackCursor dispid 2;
    property GraphCursor: CRTrackCursor dispid 3;
    property GroupAreaCursor: CRTrackCursor dispid 4;
    property GroupAreaFieldCursor: CRTrackCursor dispid 5;
  end;

// *********************************************************************//
// Interface: ICRFields
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {75C66E65-8949-11D2-BF6D-00A0C9DA4FA2}
// *********************************************************************//
  ICRFields = interface(IDispatch)
    ['{75C66E65-8949-11D2-BF6D-00A0C9DA4FA2}']
    function  Get_Count: Integer; safecall;
    function  Get_Item(Index: Integer): OleVariant; safecall;
    function  Get__NewEnum: IUnknown; safecall;
    function  Get_SelectedFieldIndex: Integer; safecall;
    property Count: Integer read Get_Count;
    property Item[Index: Integer]: OleVariant read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
    property SelectedFieldIndex: Integer read Get_SelectedFieldIndex;
  end;

// *********************************************************************//
// DispIntf:  ICRFieldsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {75C66E65-8949-11D2-BF6D-00A0C9DA4FA2}
// *********************************************************************//
  ICRFieldsDisp = dispinterface
    ['{75C66E65-8949-11D2-BF6D-00A0C9DA4FA2}']
    property Count: Integer readonly dispid 1;
    property Item[Index: Integer]: OleVariant readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property SelectedFieldIndex: Integer readonly dispid 2;
  end;

// *********************************************************************//
// Interface: ICollectCRFields
// Flags:     (0)
// GUID:      {81CBB971-8E0A-11D2-BF71-00A0C9DA4FA2}
// *********************************************************************//
  ICollectCRFields = interface(IUnknown)
    ['{81CBB971-8E0A-11D2-BF71-00A0C9DA4FA2}']
    function  GetItem(Index: Integer; out ppField: ICRField): HResult; stdcall;
    function  GetCount(out pVal: Integer): HResult; stdcall;
    function  EnumCRFields(out ppEnum: IEnumCRFields): HResult; stdcall;
    function  GetSelectedFieldIndex(out pVal: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICRField
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {75C66E67-8949-11D2-BF6D-00A0C9DA4FA2}
// *********************************************************************//
  ICRField = interface(IDispatch)
    ['{75C66E67-8949-11D2-BF6D-00A0C9DA4FA2}']
    function  Get_Value: OleVariant; safecall;
    function  Get_FieldType: CRFieldType; safecall;
    function  Get_Name: WideString; safecall;
    function  Get_IsRawData: WordBool; safecall;
    property Value: OleVariant read Get_Value;
    property FieldType: CRFieldType read Get_FieldType;
    property Name: WideString read Get_Name;
    property IsRawData: WordBool read Get_IsRawData;
  end;

// *********************************************************************//
// DispIntf:  ICRFieldDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {75C66E67-8949-11D2-BF6D-00A0C9DA4FA2}
// *********************************************************************//
  ICRFieldDisp = dispinterface
    ['{75C66E67-8949-11D2-BF6D-00A0C9DA4FA2}']
    property Value: OleVariant readonly dispid 0;
    property FieldType: CRFieldType readonly dispid 1;
    property Name: WideString readonly dispid 2;
    property IsRawData: WordBool readonly dispid 3;
  end;

// *********************************************************************//
// Interface: IEnumCRFields
// Flags:     (0)
// GUID:      {9E088781-8E06-11D2-BF71-00A0C9DA4FA2}
// *********************************************************************//
  IEnumCRFields = interface(IUnknown)
    ['{9E088781-8E06-11D2-BF71-00A0C9DA4FA2}']
    function  Next(celt: LongWord; out rgptr: ICRField; out pcFetched: LongWord): HResult; stdcall;
    function  Skip(celt: LongWord): HResult; stdcall;
    function  Reset: HResult; stdcall;
    function  Clone(out ppEnum: IEnumCRFields): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICRVEventInfo
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {75347085-7260-11D1-BE46-00A0C95A6A5C}
// *********************************************************************//
  ICRVEventInfo = interface(IDispatch)
    ['{75347085-7260-11D1-BE46-00A0C95A6A5C}']
    function  Get_Text: WideString; safecall;
    function  Get_Index: Integer; safecall;
    function  Get_ParentIndex: Integer; safecall;
    function  Get_Type_: CRObjectType; safecall;
    function  Get_CanDrillDown: WordBool; safecall;
    function  GetFields: OleVariant; safecall;
    property Text: WideString read Get_Text;
    property Index: Integer read Get_Index;
    property ParentIndex: Integer read Get_ParentIndex;
    property Type_: CRObjectType read Get_Type_;
    property CanDrillDown: WordBool read Get_CanDrillDown;
  end;

// *********************************************************************//
// DispIntf:  ICRVEventInfoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {75347085-7260-11D1-BE46-00A0C95A6A5C}
// *********************************************************************//
  ICRVEventInfoDisp = dispinterface
    ['{75347085-7260-11D1-BE46-00A0C95A6A5C}']
    property Text: WideString readonly dispid 1;
    property Index: Integer readonly dispid 2;
    property ParentIndex: Integer readonly dispid 3;
    property Type_: CRObjectType readonly dispid 4;
    property CanDrillDown: WordBool readonly dispid 5;
    function  GetFields: OleVariant; dispid 6;
  end;

// *********************************************************************//
// Interface: ICrystalReportViewerViewInfo
// Flags:     (0)
// GUID:      {04AA0267-F803-44DD-AA9B-D1265FCCF0F4}
// *********************************************************************//
  ICrystalReportViewerViewInfo = interface(IUnknown)
    ['{04AA0267-F803-44DD-AA9B-D1265FCCF0F4}']
    function  GetReportName(out pName: WideString): HResult; stdcall;
    function  GetSubreportName(out pName: WideString): HResult; stdcall;
    function  GetGroupPath(out pVal: OleVariant): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICrystalReportSourceRouter
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A0E5F37D-CA67-11D1-A817-00A0C92784CD}
// *********************************************************************//
  ICrystalReportSourceRouter = interface(IDispatch)
    ['{A0E5F37D-CA67-11D1-A817-00A0C92784CD}']
    procedure AddReport(const pUnknown: IUnknown); safecall;
  end;

// *********************************************************************//
// DispIntf:  ICrystalReportSourceRouterDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A0E5F37D-CA67-11D1-A817-00A0C92784CD}
// *********************************************************************//
  ICrystalReportSourceRouterDisp = dispinterface
    ['{A0E5F37D-CA67-11D1-A817-00A0C92784CD}']
    procedure AddReport(const pUnknown: IUnknown); dispid 1;
  end;

// *********************************************************************//
// Interface: ICrystalReportSourcePackage
// Flags:     (272) Hidden OleAutomation
// GUID:      {3DCC8FB1-C434-11D1-A817-00A0C92784CD}
// *********************************************************************//
  ICrystalReportSourcePackage = interface(IUnknown)
    ['{3DCC8FB1-C434-11D1-A817-00A0C92784CD}']
    function  EnumCrystalReportSource(out ppEnum: IEnumCrystalReportSource): HResult; stdcall;
    function  GetCount(out plCount: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IEnumCrystalReportSource
// Flags:     (272) Hidden OleAutomation
// GUID:      {3DCC8FB2-C434-11D1-A817-00A0C92784CD}
// *********************************************************************//
  IEnumCrystalReportSource = interface(IUnknown)
    ['{3DCC8FB2-C434-11D1-A817-00A0C92784CD}']
    function  Next(celt: LongWord; out rgelt: IUnknown; out pceltFetched: LongWord): HResult; stdcall;
    function  Skip(celt: LongWord): HResult; stdcall;
    function  Reset: HResult; stdcall;
    function  Clone(out ppEnum: IEnumCrystalReportSource): HResult; stdcall;
  end;


// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TCRViewer9
// Help String      : Crystal Report Viewer Control 9
// Default Interface: ICrystalReportViewer9
// Def. Intf. DISP? : No
// Event   Interface: _ICRViewerEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TCRViewer9CloseButtonClicked = procedure(Sender: TObject; var UseDefault: WordBool) of object;
  TCRViewer9FirstPageButtonClicked = procedure(Sender: TObject; var UseDefault: WordBool) of object;
  TCRViewer9LastPageButtonClicked = procedure(Sender: TObject; var UseDefault: WordBool) of object;
  TCRViewer9PrevPageButtonClicked = procedure(Sender: TObject; var UseDefault: WordBool) of object;
  TCRViewer9NextPageButtonClicked = procedure(Sender: TObject; var UseDefault: WordBool) of object;
  TCRViewer9GoToPageNClicked = procedure(Sender: TObject; var UseDefault: WordBool; 
                                                          PageNumber: Smallint) of object;
  TCRViewer9StopButtonClicked = procedure(Sender: TObject; loadingType: CRLoadingType; 
                                                           var UseDefault: WordBool) of object;
  TCRViewer9RefreshButtonClicked = procedure(Sender: TObject; var UseDefault: WordBool) of object;
  TCRViewer9PrintButtonClicked = procedure(Sender: TObject; var UseDefault: WordBool) of object;
  TCRViewer9GroupTreeButtonClicked = procedure(Sender: TObject; Visible: WordBool) of object;
  TCRViewer9ZoomLevelChanged = procedure(Sender: TObject; ZoomLevel: Smallint) of object;
  TCRViewer9SearchButtonClicked = procedure(Sender: TObject; const searchText: WideString; 
                                                             var UseDefault: WordBool) of object;
  TCRViewer9DrillOnGroup = procedure(Sender: TObject; var GroupNameList: OleVariant; 
                                                      DrillType: CRDrillType; 
                                                      var UseDefault: WordBool) of object;
  TCRViewer9DrillOnDetail = procedure(Sender: TObject; var FieldValues: OleVariant; 
                                                       SelectedFieldIndex: Integer; 
                                                       var UseDefault: WordBool) of object;
  TCRViewer9ShowGroup = procedure(Sender: TObject; var GroupNameList: OleVariant; 
                                                   var UseDefault: WordBool) of object;
  TCRViewer9SelectionFormulaButtonClicked = procedure(Sender: TObject; out selctionFormula: WideString; 
                                                                       var UseDefault: WordBool) of object;
  TCRViewer9SelectionFormulaBuilt = procedure(Sender: TObject; const selctionFormula: WideString; 
                                                               var UseDefault: WordBool) of object;
  TCRViewer9Clicked = procedure(Sender: TObject; x: Integer; y: Integer; var EventInfo: OleVariant; 
                                                 var UseDefault: WordBool) of object;
  TCRViewer9DblClicked = procedure(Sender: TObject; x: Integer; y: Integer; 
                                                    var EventInfo: OleVariant; 
                                                    var UseDefault: WordBool) of object;
  TCRViewer9DownloadStarted = procedure(Sender: TObject; loadingType: CRLoadingType) of object;
  TCRViewer9DownloadFinished = procedure(Sender: TObject; loadingType: CRLoadingType) of object;
  TCRViewer9ViewChanging = procedure(Sender: TObject; oldViewIndex: Integer; newViewIndex: Integer) of object;
  TCRViewer9ViewChanged = procedure(Sender: TObject; oldViewIndex: Integer; newViewIndex: Integer) of object;
  TCRViewer9OnReportSourceError = procedure(Sender: TObject; const errorMsg: WideString; 
                                                             errorCode: Integer; 
                                                             var UseDefault: WordBool) of object;
  TCRViewer9ExportButtonClicked = procedure(Sender: TObject; var UseDefault: WordBool) of object;
  TCRViewer9SearchExpertButtonClicked = procedure(Sender: TObject; var UseDefault: WordBool) of object;
  TCRViewer9DrillOnGraph = procedure(Sender: TObject; PageNumber: Integer; x: Integer; y: Integer; 
                                                      var UseDefault: WordBool) of object;
  TCRViewer9DrillOnSubreport = procedure(Sender: TObject; var GroupNameList: OleVariant; 
                                                          const SubreportName: WideString; 
                                                          const Title: WideString; 
                                                          PageNumber: Integer; Index: Integer; 
                                                          var UseDefault: WordBool) of object;
  TCRViewer9FocusChanged = procedure(Sender: TObject; hasFocus: WordBool) of object;
  TCRViewer9OnContextMenu = procedure(Sender: TObject; ObjectDescription: OleVariant; x: Integer; 
                                                       y: Integer; var UseDefault: WordBool) of object;
  TCRViewer9OnChangeObjectRect = procedure(Sender: TObject; ObjectDescription: OleVariant; 
                                                            x: Integer; y: Integer; width: Integer; 
                                                            height: Integer) of object;
  TCRViewer9OnLaunchHyperlink = procedure(Sender: TObject; var Hyperlink: WideString; 
                                                           var UseDefault: WordBool) of object;

  TCRViewer9 = class(TOleControl)
  private
    FOnCloseButtonClicked: TCRViewer9CloseButtonClicked;
    FOnFirstPageButtonClicked: TCRViewer9FirstPageButtonClicked;
    FOnLastPageButtonClicked: TCRViewer9LastPageButtonClicked;
    FOnPrevPageButtonClicked: TCRViewer9PrevPageButtonClicked;
    FOnNextPageButtonClicked: TCRViewer9NextPageButtonClicked;
    FOnGoToPageNClicked: TCRViewer9GoToPageNClicked;
    FOnStopButtonClicked: TCRViewer9StopButtonClicked;
    FOnRefreshButtonClicked: TCRViewer9RefreshButtonClicked;
    FOnPrintButtonClicked: TCRViewer9PrintButtonClicked;
    FOnGroupTreeButtonClicked: TCRViewer9GroupTreeButtonClicked;
    FOnZoomLevelChanged: TCRViewer9ZoomLevelChanged;
    FOnSearchButtonClicked: TCRViewer9SearchButtonClicked;
    FOnDrillOnGroup: TCRViewer9DrillOnGroup;
    FOnDrillOnDetail: TCRViewer9DrillOnDetail;
    FOnShowGroup: TCRViewer9ShowGroup;
    FOnSelectionFormulaButtonClicked: TCRViewer9SelectionFormulaButtonClicked;
    FOnSelectionFormulaBuilt: TCRViewer9SelectionFormulaBuilt;
    FOnClicked: TCRViewer9Clicked;
    FOnDblClicked: TCRViewer9DblClicked;
    FOnDownloadStarted: TCRViewer9DownloadStarted;
    FOnDownloadFinished: TCRViewer9DownloadFinished;
    FOnViewChanging: TCRViewer9ViewChanging;
    FOnViewChanged: TCRViewer9ViewChanged;
    FOnReportSourceError: TCRViewer9OnReportSourceError;
    FOnExportButtonClicked: TCRViewer9ExportButtonClicked;
    FOnSearchExpertButtonClicked: TCRViewer9SearchExpertButtonClicked;
    FOnDrillOnGraph: TCRViewer9DrillOnGraph;
    FOnDrillOnSubreport: TCRViewer9DrillOnSubreport;
    FOnHelpButtonClicked: TNotifyEvent;
    FOnFocusChanged: TCRViewer9FocusChanged;
    FOnContextMenu: TCRViewer9OnContextMenu;
    FOnChangeObjectRect: TCRViewer9OnChangeObjectRect;
    FOnLaunchHyperlink: TCRViewer9OnLaunchHyperlink;
    FIntf: ICrystalReportViewer9;
    function  GetControlInterface: ICrystalReportViewer9;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
    function  Get_ReportSource: IUnknown;
    procedure Set_ReportSource(const pVal: IUnknown);
    function  Get_TrackCursorInfo: ICRVTrackCursorInfo;
  public
    procedure ViewReport;
    procedure ActivateView(Index: OleVariant);
    procedure AddView(GroupPath: OleVariant);
    procedure CloseView(Index: OleVariant);
    function  GetViewPath(Index: Smallint): OleVariant;
    procedure PrintReport;
    procedure Refresh;
    procedure SearchForText(const Text: WideString);
    procedure ShowFirstPage;
    procedure ShowNextPage;
    procedure ShowPreviousPage;
    procedure ShowLastPage;
    procedure ShowNthPage(PageNumber: Smallint);
    procedure Zoom(ZoomLevel: Smallint);
    function  GetCurrentPageNumber: Integer;
    procedure ShowGroup(GroupPath: OleVariant);
    procedure SearchByFormula(const formula: WideString);
    function  GetViewName(out pTabName: WideString): WideString;
    function  GetGroup: OleVariant;
    procedure GetLastPageNumber(out pageN: Integer; out lastPageKnown: WordBool);
    procedure RefreshEx(refreshServerData: WordBool);
    property  ControlInterface: ICrystalReportViewer9 read GetControlInterface;
    property  DefaultInterface: ICrystalReportViewer9 read GetControlInterface;
    property ReportSource: IUnknown index 250 read GetIUnknownProp write SetIUnknownProp;
    property SelectionFormula: WideString index 344 read GetWideStringProp write SetWideStringProp;
    property TrackCursorInfo: ICRVTrackCursorInfo read Get_TrackCursorInfo;
    property ActiveViewIndex: Smallint index 346 read GetSmallintProp;
    property ViewCount: Smallint index 347 read GetSmallintProp;
    property IsBusy: WordBool index 363 read GetWordBoolProp;
  published
    property  TabStop;
    property  Align;
    property  DragCursor;
    property  DragMode;
    property  ParentShowHint;
    property  PopupMenu;
    property  ShowHint;
    property  TabOrder;
    property  Visible;
    property  OnDragDrop;
    property  OnDragOver;
    property  OnEndDrag;
    property  OnEnter;
    property  OnExit;
    property  OnStartDrag;
    property DisplayGroupTree: WordBool index 251 read GetWordBoolProp write SetWordBoolProp stored False;
    property DisplayToolbar: WordBool index 252 read GetWordBoolProp write SetWordBoolProp stored False;
    property EnableGroupTree: WordBool index 253 read GetWordBoolProp write SetWordBoolProp stored False;
    property EnableNavigationControls: WordBool index 254 read GetWordBoolProp write SetWordBoolProp stored False;
    property EnableStopButton: WordBool index 255 read GetWordBoolProp write SetWordBoolProp stored False;
    property EnablePrintButton: WordBool index 256 read GetWordBoolProp write SetWordBoolProp stored False;
    property EnableZoomControl: WordBool index 257 read GetWordBoolProp write SetWordBoolProp stored False;
    property EnableCloseButton: WordBool index 258 read GetWordBoolProp write SetWordBoolProp stored False;
    property EnableProgressControl: WordBool index 259 read GetWordBoolProp write SetWordBoolProp stored False;
    property EnableSearchControl: WordBool index 260 read GetWordBoolProp write SetWordBoolProp stored False;
    property EnableRefreshButton: WordBool index 261 read GetWordBoolProp write SetWordBoolProp stored False;
    property EnableDrillDown: WordBool index 262 read GetWordBoolProp write SetWordBoolProp stored False;
    property EnableAnimationCtrl: WordBool index 263 read GetWordBoolProp write SetWordBoolProp stored False;
    property EnableSelectExpertButton: WordBool index 264 read GetWordBoolProp write SetWordBoolProp stored False;
    property EnableToolbar: WordBool index 340 read GetWordBoolProp write SetWordBoolProp stored False;
    property DisplayBorder: WordBool index 341 read GetWordBoolProp write SetWordBoolProp stored False;
    property DisplayTabs: WordBool index 342 read GetWordBoolProp write SetWordBoolProp stored False;
    property DisplayBackgroundEdge: WordBool index 343 read GetWordBoolProp write SetWordBoolProp stored False;
    property EnablePopupMenu: WordBool index 364 read GetWordBoolProp write SetWordBoolProp stored False;
    property EnableExportButton: WordBool index 365 read GetWordBoolProp write SetWordBoolProp stored False;
    property EnableSearchExpertButton: WordBool index 367 read GetWordBoolProp write SetWordBoolProp stored False;
    property EnableHelpButton: WordBool index 370 read GetWordBoolProp write SetWordBoolProp stored False;
    property LaunchHTTPHyperlinksInNewBrowser: WordBool index 500 read GetWordBoolProp write SetWordBoolProp stored False;
    property OnCloseButtonClicked: TCRViewer9CloseButtonClicked read FOnCloseButtonClicked write FOnCloseButtonClicked;
    property OnFirstPageButtonClicked: TCRViewer9FirstPageButtonClicked read FOnFirstPageButtonClicked write FOnFirstPageButtonClicked;
    property OnLastPageButtonClicked: TCRViewer9LastPageButtonClicked read FOnLastPageButtonClicked write FOnLastPageButtonClicked;
    property OnPrevPageButtonClicked: TCRViewer9PrevPageButtonClicked read FOnPrevPageButtonClicked write FOnPrevPageButtonClicked;
    property OnNextPageButtonClicked: TCRViewer9NextPageButtonClicked read FOnNextPageButtonClicked write FOnNextPageButtonClicked;
    property OnGoToPageNClicked: TCRViewer9GoToPageNClicked read FOnGoToPageNClicked write FOnGoToPageNClicked;
    property OnStopButtonClicked: TCRViewer9StopButtonClicked read FOnStopButtonClicked write FOnStopButtonClicked;
    property OnRefreshButtonClicked: TCRViewer9RefreshButtonClicked read FOnRefreshButtonClicked write FOnRefreshButtonClicked;
    property OnPrintButtonClicked: TCRViewer9PrintButtonClicked read FOnPrintButtonClicked write FOnPrintButtonClicked;
    property OnGroupTreeButtonClicked: TCRViewer9GroupTreeButtonClicked read FOnGroupTreeButtonClicked write FOnGroupTreeButtonClicked;
    property OnZoomLevelChanged: TCRViewer9ZoomLevelChanged read FOnZoomLevelChanged write FOnZoomLevelChanged;
    property OnSearchButtonClicked: TCRViewer9SearchButtonClicked read FOnSearchButtonClicked write FOnSearchButtonClicked;
    property OnDrillOnGroup: TCRViewer9DrillOnGroup read FOnDrillOnGroup write FOnDrillOnGroup;
    property OnDrillOnDetail: TCRViewer9DrillOnDetail read FOnDrillOnDetail write FOnDrillOnDetail;
    property OnShowGroup: TCRViewer9ShowGroup read FOnShowGroup write FOnShowGroup;
    property OnSelectionFormulaButtonClicked: TCRViewer9SelectionFormulaButtonClicked read FOnSelectionFormulaButtonClicked write FOnSelectionFormulaButtonClicked;
    property OnSelectionFormulaBuilt: TCRViewer9SelectionFormulaBuilt read FOnSelectionFormulaBuilt write FOnSelectionFormulaBuilt;
    property OnClicked: TCRViewer9Clicked read FOnClicked write FOnClicked;
    property OnDblClicked: TCRViewer9DblClicked read FOnDblClicked write FOnDblClicked;
    property OnDownloadStarted: TCRViewer9DownloadStarted read FOnDownloadStarted write FOnDownloadStarted;
    property OnDownloadFinished: TCRViewer9DownloadFinished read FOnDownloadFinished write FOnDownloadFinished;
    property OnViewChanging: TCRViewer9ViewChanging read FOnViewChanging write FOnViewChanging;
    property OnViewChanged: TCRViewer9ViewChanged read FOnViewChanged write FOnViewChanged;
    property OnReportSourceError: TCRViewer9OnReportSourceError read FOnReportSourceError write FOnReportSourceError;
    property OnExportButtonClicked: TCRViewer9ExportButtonClicked read FOnExportButtonClicked write FOnExportButtonClicked;
    property OnSearchExpertButtonClicked: TCRViewer9SearchExpertButtonClicked read FOnSearchExpertButtonClicked write FOnSearchExpertButtonClicked;
    property OnDrillOnGraph: TCRViewer9DrillOnGraph read FOnDrillOnGraph write FOnDrillOnGraph;
    property OnDrillOnSubreport: TCRViewer9DrillOnSubreport read FOnDrillOnSubreport write FOnDrillOnSubreport;
    property OnHelpButtonClicked: TNotifyEvent read FOnHelpButtonClicked write FOnHelpButtonClicked;
    property OnFocusChanged: TCRViewer9FocusChanged read FOnFocusChanged write FOnFocusChanged;
    property OnContextMenu: TCRViewer9OnContextMenu read FOnContextMenu write FOnContextMenu;
    property OnChangeObjectRect: TCRViewer9OnChangeObjectRect read FOnChangeObjectRect write FOnChangeObjectRect;
    property OnLaunchHyperlink: TCRViewer9OnLaunchHyperlink read FOnLaunchHyperlink write FOnLaunchHyperlink;
  end;

// *********************************************************************//
// The Class CoCRVTrackCursorInfo provides a Create and CreateRemote method to          
// create instances of the default interface ICRVTrackCursorInfo exposed by              
// the CoClass CRVTrackCursorInfo. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCRVTrackCursorInfo = class
    class function Create: ICRVTrackCursorInfo;
    class function CreateRemote(const MachineName: string): ICRVTrackCursorInfo;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCRVTrackCursorInfo
// Help String      : Crystal Report Viewer Control - Cursor selection
// Default Interface: ICRVTrackCursorInfo
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCRVTrackCursorInfoProperties= class;
{$ENDIF}
  TCRVTrackCursorInfo = class(TOleServer)
  private
    FIntf:        ICRVTrackCursorInfo;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TCRVTrackCursorInfoProperties;
    function      GetServerProperties: TCRVTrackCursorInfoProperties;
{$ENDIF}
    function      GetDefaultInterface: ICRVTrackCursorInfo;
  protected
    procedure InitServerData; override;
    function  Get_DetailAreaCursor: CRTrackCursor;
    procedure Set_DetailAreaCursor(pVal: CRTrackCursor);
    function  Get_DetailAreaFieldCursor: CRTrackCursor;
    procedure Set_DetailAreaFieldCursor(pVal: CRTrackCursor);
    function  Get_GraphCursor: CRTrackCursor;
    procedure Set_GraphCursor(pVal: CRTrackCursor);
    function  Get_GroupAreaCursor: CRTrackCursor;
    procedure Set_GroupAreaCursor(pVal: CRTrackCursor);
    function  Get_GroupAreaFieldCursor: CRTrackCursor;
    procedure Set_GroupAreaFieldCursor(pVal: CRTrackCursor);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ICRVTrackCursorInfo);
    procedure Disconnect; override;
    property  DefaultInterface: ICRVTrackCursorInfo read GetDefaultInterface;
    property DetailAreaCursor: CRTrackCursor read Get_DetailAreaCursor write Set_DetailAreaCursor;
    property DetailAreaFieldCursor: CRTrackCursor read Get_DetailAreaFieldCursor write Set_DetailAreaFieldCursor;
    property GraphCursor: CRTrackCursor read Get_GraphCursor write Set_GraphCursor;
    property GroupAreaCursor: CRTrackCursor read Get_GroupAreaCursor write Set_GroupAreaCursor;
    property GroupAreaFieldCursor: CRTrackCursor read Get_GroupAreaFieldCursor write Set_GroupAreaFieldCursor;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCRVTrackCursorInfoProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCRVTrackCursorInfo
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCRVTrackCursorInfoProperties = class(TPersistent)
  private
    FServer:    TCRVTrackCursorInfo;
    function    GetDefaultInterface: ICRVTrackCursorInfo;
    constructor Create(AServer: TCRVTrackCursorInfo);
  protected
    function  Get_DetailAreaCursor: CRTrackCursor;
    procedure Set_DetailAreaCursor(pVal: CRTrackCursor);
    function  Get_DetailAreaFieldCursor: CRTrackCursor;
    procedure Set_DetailAreaFieldCursor(pVal: CRTrackCursor);
    function  Get_GraphCursor: CRTrackCursor;
    procedure Set_GraphCursor(pVal: CRTrackCursor);
    function  Get_GroupAreaCursor: CRTrackCursor;
    procedure Set_GroupAreaCursor(pVal: CRTrackCursor);
    function  Get_GroupAreaFieldCursor: CRTrackCursor;
    procedure Set_GroupAreaFieldCursor(pVal: CRTrackCursor);
  public
    property DefaultInterface: ICRVTrackCursorInfo read GetDefaultInterface;
  published
    property DetailAreaCursor: CRTrackCursor read Get_DetailAreaCursor write Set_DetailAreaCursor;
    property DetailAreaFieldCursor: CRTrackCursor read Get_DetailAreaFieldCursor write Set_DetailAreaFieldCursor;
    property GraphCursor: CRTrackCursor read Get_GraphCursor write Set_GraphCursor;
    property GroupAreaCursor: CRTrackCursor read Get_GroupAreaCursor write Set_GroupAreaCursor;
    property GroupAreaFieldCursor: CRTrackCursor read Get_GroupAreaFieldCursor write Set_GroupAreaFieldCursor;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoCRFields provides a Create and CreateRemote method to          
// create instances of the default interface ICRFields exposed by              
// the CoClass CRFields. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCRFields = class
    class function Create: ICRFields;
    class function CreateRemote(const MachineName: string): ICRFields;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCRFields
// Help String      : Crystal Report Viewer Control - Fields Collection
// Default Interface: ICRFields
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCRFieldsProperties= class;
{$ENDIF}
  TCRFields = class(TOleServer)
  private
    FIntf:        ICRFields;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TCRFieldsProperties;
    function      GetServerProperties: TCRFieldsProperties;
{$ENDIF}
    function      GetDefaultInterface: ICRFields;
  protected
    procedure InitServerData; override;
    function  Get_Count: Integer;
    function  Get_Item(Index: Integer): OleVariant;
    function  Get_SelectedFieldIndex: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ICRFields);
    procedure Disconnect; override;
    property  DefaultInterface: ICRFields read GetDefaultInterface;
    property Count: Integer read Get_Count;
    property Item[Index: Integer]: OleVariant read Get_Item; default;
    property SelectedFieldIndex: Integer read Get_SelectedFieldIndex;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCRFieldsProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCRFields
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCRFieldsProperties = class(TPersistent)
  private
    FServer:    TCRFields;
    function    GetDefaultInterface: ICRFields;
    constructor Create(AServer: TCRFields);
  protected
    function  Get_Count: Integer;
    function  Get_Item(Index: Integer): OleVariant;
    function  Get_SelectedFieldIndex: Integer;
  public
    property DefaultInterface: ICRFields read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoCRField provides a Create and CreateRemote method to          
// create instances of the default interface ICRField exposed by              
// the CoClass CRField. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCRField = class
    class function Create: ICRField;
    class function CreateRemote(const MachineName: string): ICRField;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCRField
// Help String      : Crystal Report Viewer Control - Field
// Default Interface: ICRField
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCRFieldProperties= class;
{$ENDIF}
  TCRField = class(TOleServer)
  private
    FIntf:        ICRField;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TCRFieldProperties;
    function      GetServerProperties: TCRFieldProperties;
{$ENDIF}
    function      GetDefaultInterface: ICRField;
  protected
    procedure InitServerData; override;
    function  Get_Value: OleVariant;
    function  Get_FieldType: CRFieldType;
    function  Get_Name: WideString;
    function  Get_IsRawData: WordBool;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ICRField);
    procedure Disconnect; override;
    property  DefaultInterface: ICRField read GetDefaultInterface;
    property Value: OleVariant read Get_Value;
    property FieldType: CRFieldType read Get_FieldType;
    property Name: WideString read Get_Name;
    property IsRawData: WordBool read Get_IsRawData;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCRFieldProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCRField
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCRFieldProperties = class(TPersistent)
  private
    FServer:    TCRField;
    function    GetDefaultInterface: ICRField;
    constructor Create(AServer: TCRField);
  protected
    function  Get_Value: OleVariant;
    function  Get_FieldType: CRFieldType;
    function  Get_Name: WideString;
    function  Get_IsRawData: WordBool;
  public
    property DefaultInterface: ICRField read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoCRVEventInfo provides a Create and CreateRemote method to          
// create instances of the default interface ICRVEventInfo exposed by              
// the CoClass CRVEventInfo. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCRVEventInfo = class
    class function Create: ICRVEventInfo;
    class function CreateRemote(const MachineName: string): ICRVEventInfo;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCRVEventInfo
// Help String      : Crystal Report Viewer Control - Event Information
// Default Interface: ICRVEventInfo
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCRVEventInfoProperties= class;
{$ENDIF}
  TCRVEventInfo = class(TOleServer)
  private
    FIntf:        ICRVEventInfo;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TCRVEventInfoProperties;
    function      GetServerProperties: TCRVEventInfoProperties;
{$ENDIF}
    function      GetDefaultInterface: ICRVEventInfo;
  protected
    procedure InitServerData; override;
    function  Get_Text: WideString;
    function  Get_Index: Integer;
    function  Get_ParentIndex: Integer;
    function  Get_Type_: CRObjectType;
    function  Get_CanDrillDown: WordBool;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ICRVEventInfo);
    procedure Disconnect; override;
    function  GetFields: OleVariant;
    property  DefaultInterface: ICRVEventInfo read GetDefaultInterface;
    property Text: WideString read Get_Text;
    property Index: Integer read Get_Index;
    property ParentIndex: Integer read Get_ParentIndex;
    property Type_: CRObjectType read Get_Type_;
    property CanDrillDown: WordBool read Get_CanDrillDown;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCRVEventInfoProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCRVEventInfo
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCRVEventInfoProperties = class(TPersistent)
  private
    FServer:    TCRVEventInfo;
    function    GetDefaultInterface: ICRVEventInfo;
    constructor Create(AServer: TCRVEventInfo);
  protected
    function  Get_Text: WideString;
    function  Get_Index: Integer;
    function  Get_ParentIndex: Integer;
    function  Get_Type_: CRObjectType;
    function  Get_CanDrillDown: WordBool;
  public
    property DefaultInterface: ICRVEventInfo read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoCRCrystalReportViewerViewInfo provides a Create and CreateRemote method to          
// create instances of the default interface ICrystalReportViewerViewInfo exposed by              
// the CoClass CRCrystalReportViewerViewInfo. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCRCrystalReportViewerViewInfo = class
    class function Create: ICrystalReportViewerViewInfo;
    class function CreateRemote(const MachineName: string): ICrystalReportViewerViewInfo;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCRCrystalReportViewerViewInfo
// Help String      : 
// Default Interface: ICrystalReportViewerViewInfo
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCRCrystalReportViewerViewInfoProperties= class;
{$ENDIF}
  TCRCrystalReportViewerViewInfo = class(TOleServer)
  private
    FIntf:        ICrystalReportViewerViewInfo;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TCRCrystalReportViewerViewInfoProperties;
    function      GetServerProperties: TCRCrystalReportViewerViewInfoProperties;
{$ENDIF}
    function      GetDefaultInterface: ICrystalReportViewerViewInfo;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ICrystalReportViewerViewInfo);
    procedure Disconnect; override;
    function  GetReportName(out pName: WideString): HResult;
    function  GetSubreportName(out pName: WideString): HResult;
    function  GetGroupPath(out pVal: OleVariant): HResult;
    property  DefaultInterface: ICrystalReportViewerViewInfo read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCRCrystalReportViewerViewInfoProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCRCrystalReportViewerViewInfo
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCRCrystalReportViewerViewInfoProperties = class(TPersistent)
  private
    FServer:    TCRCrystalReportViewerViewInfo;
    function    GetDefaultInterface: ICrystalReportViewerViewInfo;
    constructor Create(AServer: TCRCrystalReportViewerViewInfo);
  protected
  public
    property DefaultInterface: ICrystalReportViewerViewInfo read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoReportSourceRouter provides a Create and CreateRemote method to          
// create instances of the default interface ICrystalReportSourceRouter exposed by              
// the CoClass ReportSourceRouter. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoReportSourceRouter = class
    class function Create: ICrystalReportSourceRouter;
    class function CreateRemote(const MachineName: string): ICrystalReportSourceRouter;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TReportSourceRouter
// Help String      : Report Source Router
// Default Interface: ICrystalReportSourceRouter
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TReportSourceRouterProperties= class;
{$ENDIF}
  TReportSourceRouter = class(TOleServer)
  private
    FIntf:        ICrystalReportSourceRouter;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TReportSourceRouterProperties;
    function      GetServerProperties: TReportSourceRouterProperties;
{$ENDIF}
    function      GetDefaultInterface: ICrystalReportSourceRouter;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ICrystalReportSourceRouter);
    procedure Disconnect; override;
    procedure AddReport(const pUnknown: IUnknown);
    property  DefaultInterface: ICrystalReportSourceRouter read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TReportSourceRouterProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TReportSourceRouter
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TReportSourceRouterProperties = class(TPersistent)
  private
    FServer:    TReportSourceRouter;
    function    GetDefaultInterface: ICrystalReportSourceRouter;
    constructor Create(AServer: TReportSourceRouter);
  protected
  public
    property DefaultInterface: ICrystalReportSourceRouter read GetDefaultInterface;
  published
  end;
{$ENDIF}


procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

implementation

uses ComObj;

procedure TCRViewer9.InitControlData;
const
  CEventDispIDs: array [0..32] of DWORD = (
    $00000191, $00000192, $00000193, $00000194, $00000195, $00000196,
    $00000197, $00000198, $00000199, $0000019A, $0000019B, $0000019C,
    $0000019D, $0000019E, $0000019F, $000001A0, $000001A1, $000001A2,
    $000001A3, $000001A4, $000001A5, $000001A6, $000001A7, $000001A8,
    $000001A9, $000001AA, $000001AB, $000001AC, $000001AD, $000001AE,
    $000001AF, $000001B0, $000001B1);
  CControlData: TControlData2 = (
    ClassID: '{2DEF4530-8CE6-41C9-84B6-A54536C90213}';
    EventIID: '{CFDF4A60-6FFC-11D1-BE46-00A0C95A6A5C}';
    EventCount: 33;
    EventDispIDs: @CEventDispIDs;
    LicenseKey: nil (*HR:$80004002*);
    Flags: $00000000;
    Version: 401);
begin
  ControlData := @CControlData;
  TControlData2(CControlData).FirstEventOfs := Cardinal(@@FOnCloseButtonClicked) - Cardinal(Self);
end;

procedure TCRViewer9.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as ICrystalReportViewer9;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TCRViewer9.GetControlInterface: ICrystalReportViewer9;
begin
  CreateControl;
  Result := FIntf;
end;

function  TCRViewer9.Get_ReportSource: IUnknown;
begin
  Result := DefaultInterface.ReportSource;
end;

procedure TCRViewer9.Set_ReportSource(const pVal: IUnknown);
begin
  DefaultInterface.ReportSource := pVal;
end;

function  TCRViewer9.Get_TrackCursorInfo: ICRVTrackCursorInfo;
begin
  Result := DefaultInterface.TrackCursorInfo;
end;

procedure TCRViewer9.ViewReport;
begin
  DefaultInterface.ViewReport;
end;

procedure TCRViewer9.ActivateView(Index: OleVariant);
begin
  DefaultInterface.ActivateView(Index);
end;

procedure TCRViewer9.AddView(GroupPath: OleVariant);
begin
  DefaultInterface.AddView(GroupPath);
end;

procedure TCRViewer9.CloseView(Index: OleVariant);
begin
  DefaultInterface.CloseView(Index);
end;

function  TCRViewer9.GetViewPath(Index: Smallint): OleVariant;
begin
  Result := DefaultInterface.GetViewPath(Index);
end;

procedure TCRViewer9.PrintReport;
begin
  DefaultInterface.PrintReport;
end;

procedure TCRViewer9.Refresh;
begin
  DefaultInterface.Refresh;
end;

procedure TCRViewer9.SearchForText(const Text: WideString);
begin
  DefaultInterface.SearchForText(Text);
end;

procedure TCRViewer9.ShowFirstPage;
begin
  DefaultInterface.ShowFirstPage;
end;

procedure TCRViewer9.ShowNextPage;
begin
  DefaultInterface.ShowNextPage;
end;

procedure TCRViewer9.ShowPreviousPage;
begin
  DefaultInterface.ShowPreviousPage;
end;

procedure TCRViewer9.ShowLastPage;
begin
  DefaultInterface.ShowLastPage;
end;

procedure TCRViewer9.ShowNthPage(PageNumber: Smallint);
begin
  DefaultInterface.ShowNthPage(PageNumber);
end;

procedure TCRViewer9.Zoom(ZoomLevel: Smallint);
begin
  DefaultInterface.Zoom(ZoomLevel);
end;

function  TCRViewer9.GetCurrentPageNumber: Integer;
begin
  Result := DefaultInterface.GetCurrentPageNumber;
end;

procedure TCRViewer9.ShowGroup(GroupPath: OleVariant);
begin
  DefaultInterface.ShowGroup(GroupPath);
end;

procedure TCRViewer9.SearchByFormula(const formula: WideString);
begin
  DefaultInterface.SearchByFormula(formula);
end;

function  TCRViewer9.GetViewName(out pTabName: WideString): WideString;
begin
  Result := DefaultInterface.GetViewName(pTabName);
end;

function  TCRViewer9.GetGroup: OleVariant;
begin
  Result := DefaultInterface.GetGroup;
end;

procedure TCRViewer9.GetLastPageNumber(out pageN: Integer; out lastPageKnown: WordBool);
begin
  DefaultInterface.GetLastPageNumber(pageN, lastPageKnown);
end;

procedure TCRViewer9.RefreshEx(refreshServerData: WordBool);
begin
  DefaultInterface.RefreshEx(refreshServerData);
end;

class function CoCRVTrackCursorInfo.Create: ICRVTrackCursorInfo;
begin
  Result := CreateComObject(CLASS_CRVTrackCursorInfo) as ICRVTrackCursorInfo;
end;

class function CoCRVTrackCursorInfo.CreateRemote(const MachineName: string): ICRVTrackCursorInfo;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CRVTrackCursorInfo) as ICRVTrackCursorInfo;
end;

procedure TCRVTrackCursorInfo.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{13FA5947-561C-11D1-BE3F-00A0C95A6A5C}';
    IntfIID:   '{13FA5946-561C-11D1-BE3F-00A0C95A6A5C}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCRVTrackCursorInfo.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ICRVTrackCursorInfo;
  end;
end;

procedure TCRVTrackCursorInfo.ConnectTo(svrIntf: ICRVTrackCursorInfo);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCRVTrackCursorInfo.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCRVTrackCursorInfo.GetDefaultInterface: ICRVTrackCursorInfo;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TCRVTrackCursorInfo.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCRVTrackCursorInfoProperties.Create(Self);
{$ENDIF}
end;

destructor TCRVTrackCursorInfo.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCRVTrackCursorInfo.GetServerProperties: TCRVTrackCursorInfoProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function  TCRVTrackCursorInfo.Get_DetailAreaCursor: CRTrackCursor;
begin
  Result := DefaultInterface.DetailAreaCursor;
end;

procedure TCRVTrackCursorInfo.Set_DetailAreaCursor(pVal: CRTrackCursor);
begin
  DefaultInterface.DetailAreaCursor := pVal;
end;

function  TCRVTrackCursorInfo.Get_DetailAreaFieldCursor: CRTrackCursor;
begin
  Result := DefaultInterface.DetailAreaFieldCursor;
end;

procedure TCRVTrackCursorInfo.Set_DetailAreaFieldCursor(pVal: CRTrackCursor);
begin
  DefaultInterface.DetailAreaFieldCursor := pVal;
end;

function  TCRVTrackCursorInfo.Get_GraphCursor: CRTrackCursor;
begin
  Result := DefaultInterface.GraphCursor;
end;

procedure TCRVTrackCursorInfo.Set_GraphCursor(pVal: CRTrackCursor);
begin
  DefaultInterface.GraphCursor := pVal;
end;

function  TCRVTrackCursorInfo.Get_GroupAreaCursor: CRTrackCursor;
begin
  Result := DefaultInterface.GroupAreaCursor;
end;

procedure TCRVTrackCursorInfo.Set_GroupAreaCursor(pVal: CRTrackCursor);
begin
  DefaultInterface.GroupAreaCursor := pVal;
end;

function  TCRVTrackCursorInfo.Get_GroupAreaFieldCursor: CRTrackCursor;
begin
  Result := DefaultInterface.GroupAreaFieldCursor;
end;

procedure TCRVTrackCursorInfo.Set_GroupAreaFieldCursor(pVal: CRTrackCursor);
begin
  DefaultInterface.GroupAreaFieldCursor := pVal;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCRVTrackCursorInfoProperties.Create(AServer: TCRVTrackCursorInfo);
begin
  inherited Create;
  FServer := AServer;
end;

function TCRVTrackCursorInfoProperties.GetDefaultInterface: ICRVTrackCursorInfo;
begin
  Result := FServer.DefaultInterface;
end;

function  TCRVTrackCursorInfoProperties.Get_DetailAreaCursor: CRTrackCursor;
begin
  Result := DefaultInterface.DetailAreaCursor;
end;

procedure TCRVTrackCursorInfoProperties.Set_DetailAreaCursor(pVal: CRTrackCursor);
begin
  DefaultInterface.DetailAreaCursor := pVal;
end;

function  TCRVTrackCursorInfoProperties.Get_DetailAreaFieldCursor: CRTrackCursor;
begin
  Result := DefaultInterface.DetailAreaFieldCursor;
end;

procedure TCRVTrackCursorInfoProperties.Set_DetailAreaFieldCursor(pVal: CRTrackCursor);
begin
  DefaultInterface.DetailAreaFieldCursor := pVal;
end;

function  TCRVTrackCursorInfoProperties.Get_GraphCursor: CRTrackCursor;
begin
  Result := DefaultInterface.GraphCursor;
end;

procedure TCRVTrackCursorInfoProperties.Set_GraphCursor(pVal: CRTrackCursor);
begin
  DefaultInterface.GraphCursor := pVal;
end;

function  TCRVTrackCursorInfoProperties.Get_GroupAreaCursor: CRTrackCursor;
begin
  Result := DefaultInterface.GroupAreaCursor;
end;

procedure TCRVTrackCursorInfoProperties.Set_GroupAreaCursor(pVal: CRTrackCursor);
begin
  DefaultInterface.GroupAreaCursor := pVal;
end;

function  TCRVTrackCursorInfoProperties.Get_GroupAreaFieldCursor: CRTrackCursor;
begin
  Result := DefaultInterface.GroupAreaFieldCursor;
end;

procedure TCRVTrackCursorInfoProperties.Set_GroupAreaFieldCursor(pVal: CRTrackCursor);
begin
  DefaultInterface.GroupAreaFieldCursor := pVal;
end;

{$ENDIF}

class function CoCRFields.Create: ICRFields;
begin
  Result := CreateComObject(CLASS_CRFields) as ICRFields;
end;

class function CoCRFields.CreateRemote(const MachineName: string): ICRFields;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CRFields) as ICRFields;
end;

procedure TCRFields.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{75C66E66-8949-11D2-BF6D-00A0C9DA4FA2}';
    IntfIID:   '{75C66E65-8949-11D2-BF6D-00A0C9DA4FA2}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCRFields.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ICRFields;
  end;
end;

procedure TCRFields.ConnectTo(svrIntf: ICRFields);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCRFields.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCRFields.GetDefaultInterface: ICRFields;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TCRFields.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCRFieldsProperties.Create(Self);
{$ENDIF}
end;

destructor TCRFields.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCRFields.GetServerProperties: TCRFieldsProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function  TCRFields.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

function  TCRFields.Get_Item(Index: Integer): OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.Item[Index];
end;

function  TCRFields.Get_SelectedFieldIndex: Integer;
begin
  Result := DefaultInterface.SelectedFieldIndex;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCRFieldsProperties.Create(AServer: TCRFields);
begin
  inherited Create;
  FServer := AServer;
end;

function TCRFieldsProperties.GetDefaultInterface: ICRFields;
begin
  Result := FServer.DefaultInterface;
end;

function  TCRFieldsProperties.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

function  TCRFieldsProperties.Get_Item(Index: Integer): OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.Item[Index];
end;

function  TCRFieldsProperties.Get_SelectedFieldIndex: Integer;
begin
  Result := DefaultInterface.SelectedFieldIndex;
end;

{$ENDIF}

class function CoCRField.Create: ICRField;
begin
  Result := CreateComObject(CLASS_CRField) as ICRField;
end;

class function CoCRField.CreateRemote(const MachineName: string): ICRField;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CRField) as ICRField;
end;

procedure TCRField.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{75C66E68-8949-11D2-BF6D-00A0C9DA4FA2}';
    IntfIID:   '{75C66E67-8949-11D2-BF6D-00A0C9DA4FA2}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCRField.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ICRField;
  end;
end;

procedure TCRField.ConnectTo(svrIntf: ICRField);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCRField.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCRField.GetDefaultInterface: ICRField;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TCRField.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCRFieldProperties.Create(Self);
{$ENDIF}
end;

destructor TCRField.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCRField.GetServerProperties: TCRFieldProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function  TCRField.Get_Value: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.Value;
end;

function  TCRField.Get_FieldType: CRFieldType;
begin
  Result := DefaultInterface.FieldType;
end;

function  TCRField.Get_Name: WideString;
begin
  Result := DefaultInterface.Name;
end;

function  TCRField.Get_IsRawData: WordBool;
begin
  Result := DefaultInterface.IsRawData;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCRFieldProperties.Create(AServer: TCRField);
begin
  inherited Create;
  FServer := AServer;
end;

function TCRFieldProperties.GetDefaultInterface: ICRField;
begin
  Result := FServer.DefaultInterface;
end;

function  TCRFieldProperties.Get_Value: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.Value;
end;

function  TCRFieldProperties.Get_FieldType: CRFieldType;
begin
  Result := DefaultInterface.FieldType;
end;

function  TCRFieldProperties.Get_Name: WideString;
begin
  Result := DefaultInterface.Name;
end;

function  TCRFieldProperties.Get_IsRawData: WordBool;
begin
  Result := DefaultInterface.IsRawData;
end;

{$ENDIF}

class function CoCRVEventInfo.Create: ICRVEventInfo;
begin
  Result := CreateComObject(CLASS_CRVEventInfo) as ICRVEventInfo;
end;

class function CoCRVEventInfo.CreateRemote(const MachineName: string): ICRVEventInfo;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CRVEventInfo) as ICRVEventInfo;
end;

procedure TCRVEventInfo.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{75347086-7260-11D1-BE46-00A0C95A6A5C}';
    IntfIID:   '{75347085-7260-11D1-BE46-00A0C95A6A5C}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCRVEventInfo.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ICRVEventInfo;
  end;
end;

procedure TCRVEventInfo.ConnectTo(svrIntf: ICRVEventInfo);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCRVEventInfo.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCRVEventInfo.GetDefaultInterface: ICRVEventInfo;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TCRVEventInfo.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCRVEventInfoProperties.Create(Self);
{$ENDIF}
end;

destructor TCRVEventInfo.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCRVEventInfo.GetServerProperties: TCRVEventInfoProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function  TCRVEventInfo.Get_Text: WideString;
begin
  Result := DefaultInterface.Text;
end;

function  TCRVEventInfo.Get_Index: Integer;
begin
  Result := DefaultInterface.Index;
end;

function  TCRVEventInfo.Get_ParentIndex: Integer;
begin
  Result := DefaultInterface.ParentIndex;
end;

function  TCRVEventInfo.Get_Type_: CRObjectType;
begin
  Result := DefaultInterface.Type_;
end;

function  TCRVEventInfo.Get_CanDrillDown: WordBool;
begin
  Result := DefaultInterface.CanDrillDown;
end;

function  TCRVEventInfo.GetFields: OleVariant;
begin
  Result := DefaultInterface.GetFields;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCRVEventInfoProperties.Create(AServer: TCRVEventInfo);
begin
  inherited Create;
  FServer := AServer;
end;

function TCRVEventInfoProperties.GetDefaultInterface: ICRVEventInfo;
begin
  Result := FServer.DefaultInterface;
end;

function  TCRVEventInfoProperties.Get_Text: WideString;
begin
  Result := DefaultInterface.Text;
end;

function  TCRVEventInfoProperties.Get_Index: Integer;
begin
  Result := DefaultInterface.Index;
end;

function  TCRVEventInfoProperties.Get_ParentIndex: Integer;
begin
  Result := DefaultInterface.ParentIndex;
end;

function  TCRVEventInfoProperties.Get_Type_: CRObjectType;
begin
  Result := DefaultInterface.Type_;
end;

function  TCRVEventInfoProperties.Get_CanDrillDown: WordBool;
begin
  Result := DefaultInterface.CanDrillDown;
end;

{$ENDIF}

class function CoCRCrystalReportViewerViewInfo.Create: ICrystalReportViewerViewInfo;
begin
  Result := CreateComObject(CLASS_CRCrystalReportViewerViewInfo) as ICrystalReportViewerViewInfo;
end;

class function CoCRCrystalReportViewerViewInfo.CreateRemote(const MachineName: string): ICrystalReportViewerViewInfo;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CRCrystalReportViewerViewInfo) as ICrystalReportViewerViewInfo;
end;

procedure TCRCrystalReportViewerViewInfo.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{6197C192-EAD6-44F8-9A21-964E97249F4D}';
    IntfIID:   '{04AA0267-F803-44DD-AA9B-D1265FCCF0F4}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCRCrystalReportViewerViewInfo.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ICrystalReportViewerViewInfo;
  end;
end;

procedure TCRCrystalReportViewerViewInfo.ConnectTo(svrIntf: ICrystalReportViewerViewInfo);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCRCrystalReportViewerViewInfo.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCRCrystalReportViewerViewInfo.GetDefaultInterface: ICrystalReportViewerViewInfo;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TCRCrystalReportViewerViewInfo.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCRCrystalReportViewerViewInfoProperties.Create(Self);
{$ENDIF}
end;

destructor TCRCrystalReportViewerViewInfo.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCRCrystalReportViewerViewInfo.GetServerProperties: TCRCrystalReportViewerViewInfoProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function  TCRCrystalReportViewerViewInfo.GetReportName(out pName: WideString): HResult;
begin
  DefaultInterface.GetReportName(pName);
end;

function  TCRCrystalReportViewerViewInfo.GetSubreportName(out pName: WideString): HResult;
begin
  DefaultInterface.GetSubreportName(pName);
end;

function  TCRCrystalReportViewerViewInfo.GetGroupPath(out pVal: OleVariant): HResult;
begin
  DefaultInterface.GetGroupPath(pVal);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCRCrystalReportViewerViewInfoProperties.Create(AServer: TCRCrystalReportViewerViewInfo);
begin
  inherited Create;
  FServer := AServer;
end;

function TCRCrystalReportViewerViewInfoProperties.GetDefaultInterface: ICrystalReportViewerViewInfo;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoReportSourceRouter.Create: ICrystalReportSourceRouter;
begin
  Result := CreateComObject(CLASS_ReportSourceRouter) as ICrystalReportSourceRouter;
end;

class function CoReportSourceRouter.CreateRemote(const MachineName: string): ICrystalReportSourceRouter;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ReportSourceRouter) as ICrystalReportSourceRouter;
end;

procedure TReportSourceRouter.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{A0E5F37E-CA67-11D1-A817-00A0C92784CD}';
    IntfIID:   '{A0E5F37D-CA67-11D1-A817-00A0C92784CD}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TReportSourceRouter.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ICrystalReportSourceRouter;
  end;
end;

procedure TReportSourceRouter.ConnectTo(svrIntf: ICrystalReportSourceRouter);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TReportSourceRouter.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TReportSourceRouter.GetDefaultInterface: ICrystalReportSourceRouter;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TReportSourceRouter.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TReportSourceRouterProperties.Create(Self);
{$ENDIF}
end;

destructor TReportSourceRouter.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TReportSourceRouter.GetServerProperties: TReportSourceRouterProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TReportSourceRouter.AddReport(const pUnknown: IUnknown);
begin
  DefaultInterface.AddReport(pUnknown);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TReportSourceRouterProperties.Create(AServer: TReportSourceRouter);
begin
  inherited Create;
  FServer := AServer;
end;

function TReportSourceRouterProperties.GetDefaultInterface: ICrystalReportSourceRouter;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

procedure Register;
begin
  RegisterComponents('ActiveX',[TCRViewer9]);
  RegisterComponents(dtlServerPage, [TCRVTrackCursorInfo, TCRFields, TCRField, TCRVEventInfo, 
    TCRCrystalReportViewerViewInfo, TReportSourceRouter]);
end;

end.
