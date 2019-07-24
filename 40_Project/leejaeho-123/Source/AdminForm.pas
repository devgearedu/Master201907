unit AdminForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.StdActns, Vcl.ActnCtrls, Vcl.Ribbon,
  Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnMenus, Vcl.RibbonActnMenus,
  Vcl.RibbonLunaStyleActnCtrls, Vcl.StdCtrls, Vcl.ComCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TAdmin = class(TForm)
    Ribbon1: TRibbon;
    RibbonPage1: TRibbonPage;
    RibbonGroup2: TRibbonGroup;
    Pgc_Writer: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    lbl_SearchList: TLabel;
    lbl_Search: TLabel;
    Cbx_Search: TComboBox;
    Edt_Search: TEdit;
    Tbc_Writer: TTabControl;
    DBG_Writer: TDBGrid;
    DbEdt_ID: TDBEdit;
    DbEdt_NickName: TDBEdit;
    DbEdt_UpLoad: TDBEdit;
    DbEdt_Good: TDBEdit;
    DbEdt_NotGood: TDBEdit;
    DbEdt_Point: TDBEdit;
    lbl_ID: TLabel;
    lbl_NickName: TLabel;
    lbl_UpLoad: TLabel;
    lbl_Good: TLabel;
    lbl_NotGood: TLabel;
    lbl_WriterPoint: TLabel;
    Btn_NovelMove: TButton;
    DbRdoG_jeje: TDBRadioGroup;
    Btn_ReWrite: TButton;
    procedure Tbc_WriterChange(Sender: TObject);
    procedure Cbx_SearchChange(Sender: TObject);
    procedure Edt_SearchChange(Sender: TObject);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  Admin: TAdmin;

implementation

{$R *.dfm}

uses DM_Novel;

procedure TAdmin.Cbx_SearchChange(Sender: TObject);
begin
 case Cbx_Search.ItemIndex of
    0:begin
        dm.Writer.IndexName := 'W_ID';
        dm.WRITERWRITER_ID.Index := 0;
        dm.WRITERWRITER_GOOD.Index := 1; //필드순서 변경 코딩
      end;
    1:begin
        dm.Writer.IndexName := 'W_GOOD';
        dm.WRITERWRITER_ID.Index := 0;
        dm.WRITERWRITER_GOOD.Index := 1;
      end;

    2:dm.Writer.IndexName := 'W_UP';  //콤보활용검색
  end;
end;

procedure TAdmin.Edt_SearchChange(Sender: TObject);
begin
  dm.WRITER.FindNearest([Edt_Search.Text]);//글자변하면서 키찾아가는 코딩
end;

procedure TAdmin.Tbc_WriterChange(Sender: TObject);
begin
 if Tbc_Writer.TabIndex = 0 then
    dm.WRITER.Filtered := false     //   첫번째 찍었을떄는 필터처리 안함
  else
  begin
    dm.WRITER.Filtered := True;
    dm.WRITER.Filter := 'WRITER_GOOD=' + '''' +  //'''' 컨켄티브
    Tbc_Writer.Tabs[Tbc_Writer.TabIndex] + '''';  //
  end;

end;

end.
