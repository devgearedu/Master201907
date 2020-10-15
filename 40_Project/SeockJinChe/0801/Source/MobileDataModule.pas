unit MobileDataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DbxDatasnap, Data.DBXCommon,
  IPPeerClient, Datasnap.DBClient, Datasnap.DSConnect, Data.DB, Data.SqlExpr,
  Datasnap.Provider, FMX.Dialogs, FMX.Graphics, System.IOUtils;

type
  TDataModule1 = class(TDataModule)
    User: TClientDataSet;
    UserReserve: TClientDataSet;
    UserListProvider: TDataSetProvider;
    UserReserveProvider: TDataSetProvider;
    DSProviderConnection1: TDSProviderConnection;
    MobileConnection: TSQLConnection;
    UserReserveNum: TIntegerField;
    UserPATIENT_SEQ: TIntegerField;
    UserPATIENT_NAME: TWideStringField;
    UserPATIENT_BIRTH: TDateField;
    UserPATIENT_IMAGE: TBlobField;
    UserPATIENT_PHONE: TWideStringField;
    UserPATIENT_GENDER: TWideStringField;
    UserUSER_ID: TWideStringField;
    UserUSER_PASSWORD: TWideStringField;
    UserReserveRESERVE_SEQ: TIntegerField;
    UserReservePATIENT_SEQ: TIntegerField;
    UserReserveDOCTOR_SEQ: TIntegerField;
    UserReserveNOWSTATE: TIntegerField;
    UserReserveRESERVATION_DATE: TDateField;
    UserReserveRESERVATION_TIME: TTimeField;
    UserReserveREASON: TWideStringField;
    UserReserveTOTAL_PRICE: TIntegerField;
    UserReservePATIENT_NAME: TStringField;
    Doctor: TClientDataSet;
    DoctorProvider: TDataSetProvider;
    DoctorDOCTOR_SEQ: TIntegerField;
    DoctorDOCTOR_NAME: TWideStringField;
    DoctorDOCTOR_PHONE: TStringField;
    DoctorDOCTOR_IMAGE: TBlobField;
    UserReserveDOCTOR_NAME: TStringField;
    WaitList: TClientDataSet;
    WaitListProvider: TDataSetProvider;
    WaitListRESERVE_SEQ: TIntegerField;
    WaitListPATIENT_SEQ: TIntegerField;
    WaitListDOCTOR_SEQ: TIntegerField;
    WaitListPATIENT_NAME: TStringField;
    WaitListPATIENT_BIRTH: TDateField;
    WaitListRESERVATION_DATE: TDateField;
    WaitListRESERVATION_TIME: TTimeField;
    WaitListNOWSTATE: TIntegerField;
    WaitListDOCTOR_NAME: TStringField;
    WaitListREASON: TWideStringField;
    WaitListNum: TIntegerField;
    procedure MobileConnectionBeforeConnect(Sender: TObject);
    procedure WaitListCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Connect; // 데이터베이스 연결
    procedure AppendMode; // 입력 모드로 변경
    procedure EditMode; // 수정 모드로 변경
    procedure SetImage(ABitmap: TBitmap); // 이미지저장(본문, 목록의 썸네일 이미지)
    procedure SaveItem; // 항목 저장(입력/수정)
    procedure CancelItem; // 입력/수정 모드 취소
    procedure DeleteItem; // 선택항목 삭제
  end;

var
  DataModule1: TDataModule1;
  userSEQ: Integer;
  userName: String;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

//uses
//{$IFDEF ANDROID}
//  Androidapi.Helpers,
//  Androidapi.JNI.JavaTypes,
//  Androidapi.JNI.Os,
//{$ENDIF}
//
//{$R *.fmx}
//{$R *.LgXhdpiTb.fmx ANDROID}
{$R *.dfm}

procedure TDataModule1.AppendMode;   //입력모드
begin
  UserReserve.Insert;
end;

procedure TDataModule1.CancelItem;   // 입력/수정 모드 취소
begin
  if User.UpdateStatus = TUpdateStatus.usInserted then
    User.Cancel;
  if UserReserve.UpdateStatus = TUpdateStatus.usInserted then
    UserReserve.Cancel;
end;

procedure TDataModule1.Connect;   // 데이터베이스 연결
begin
  try
//    {$IFNDEF MSWINDOWS}
//    MobileConnection.Params.Values['Database'] := TPath.Combine(TPath.GetDocumentsPath, 'PATIENTLOG.GDB');
//    {$ENDIF}
    MobileConnection.Connected := True;
    User.Active := True;
    UserReserve.Active := True;
    Doctor.Active := True;
    WaitList.Active := True;
  except
    showmessage('서버 상태를 확인하세요.');

  end;
end;

procedure TDataModule1.DeleteItem;  //현재항목 삭제
begin
  UserReserve.Delete;
  UserReserve.ApplyUpdates(0);
//  UserReserve.CommitUpdates;
  UserReserve.Refresh;
end;

procedure TDataModule1.EditMode;  //수정모드
begin
  User.Edit;
end;

procedure TDataModule1.MobileConnectionBeforeConnect(Sender: TObject);
begin
// 윈도우가 아닌 경우 데이터베이스 경로를 배포경로로 조정
  {$IFNDEF MSWINDOWS}
    MobileConnection.Params.Values['Database'] := TPath.Combine(TPath.GetDocumentsPath, 'PATIENTLOG.GDB');
  {$ENDIF}
end;

procedure TDataModule1.SaveItem;
begin
  UserReserve.Post;
  UserReserve.ApplyUpdates(0);
//  UserList.CommitUpdates;
  UserReserve.Refresh;
end;


procedure TDataModule1.SetImage(ABitmap: TBitmap);
var
  Thumbnail: TBitmap;
  ImgStream, ThumbStream: TMemoryStream;
begin
  if User.UpdateStatus = TUpdateStatus.usUnmodified then
    User.Edit;

  ImgStream := TMemoryStream.Create;
  ThumbStream := TMemoryStream.Create;
  try
    ABitmap.SaveToStream(ImgStream);
    Thumbnail := ABitmap.CreateThumbnail(100, 100);
    Thumbnail.SaveToStream(ThumbStream);

    (User.FieldByName('PATIENT_IMAGE') as TBlobField).LoadFromStream(ImgStream);
  finally
    ImgStream.Free;
    ThumbStream.Free;
  end;
end;

procedure TDataModule1.WaitListCalcFields(DataSet: TDataSet);
var
  i:integer;
begin
  for i := 0 to WaitList.RecNo do
    WaitList.FieldByName('Num').AsInteger := i;

end;

end.
