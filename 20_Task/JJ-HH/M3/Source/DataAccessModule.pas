unit DataAccessModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TdmDataAccess = class(TDataModule)
    conBookRental: TFDConnection;
    qryBook: TFDQuery;
    qryBookBOOK_SEQ: TIntegerField;
    qryBookBOOK_TITLE: TWideStringField;
    qryBookBOOK_ISBN: TStringField;
    qryBookBOOK_AUTHOR: TWideStringField;
    qryBookBOOK_PRICE: TIntegerField;
    qryBookBOOK_LINK: TWideStringField;
    qryBookBOOK_RENT_YN: TStringField;
    qryBookBOOK_IMAGE: TBlobField;
    qryBookBOOK_DESCRIPTION: TWideMemoField;
    qryBookBOOK_RENT: TStringField;
    qryDuplicatedBook: TFDQuery;
    qryUser: TFDQuery;
    qryUserUSER_SEQ: TIntegerField;
    qryUserUSER_NAME: TWideStringField;
    qryUserUSER_BIRTH: TDateField;
    qryUserUSER_SEX: TStringField;
    qryUserUSER_PHONE: TStringField;
    qryUserUSER_MAIL: TWideStringField;
    qryUserUSER_IMAGE: TBlobField;
    qryUserUSER_REG_DATE: TDateField;
    qryUserUSER_OUT_YN: TStringField;
    qryUserUSER_OUT_DATE: TDateField;
    qryUserUSER_RENT_COUNT: TIntegerField;
    qryUserUSER_SEX_STR: TStringField;
    qryUserUSER_OUT: TStringField;
    qryDuplicatedUser: TFDQuery;
    qryRent: TFDQuery;
    qryRentUser: TFDQuery;
    qryRentBook: TFDQuery;
    dsRent: TDataSource;
    usRent: TFDUpdateSQL;
    qryRentBOOK_TITLE: TWideStringField;
    qryRentUSER_NAME: TWideStringField;
    qryRentRENT_SEQ: TIntegerField;
    qryRentUSER_SEQ: TIntegerField;
    qryRentBOOK_SEQ: TIntegerField;
    qryRentRENT_DATE: TDateField;
    qryRentRENT_RETURN_DATE: TDateField;
    qryRentRENT_RETURN_YN: TStringField;
    qryRentRENT_RETURN: TStringField;
    qryRentBookBOOK_SEQ: TIntegerField;
    qryRentBookBOOK_TITLE: TWideStringField;
    qryRentBookBOOK_ISBN: TStringField;
    qryRentBookBOOK_AUTHOR: TWideStringField;
    qryRentBookBOOK_PRICE: TIntegerField;
    qryRentBookBOOK_LINK: TWideStringField;
    qryRentBookBOOK_RENT_YN: TStringField;
    qryRentBookBOOK_IMAGE: TBlobField;
    qryRentBookBOOK_DESCRIPTION: TWideMemoField;
    qryFindUser: TFDQuery;
    qryFindUserUSER_SEQ: TIntegerField;
    qryFindUserUSER_NAME: TWideStringField;
    qryFindUserUSER_BIRTH: TDateField;
    qryFindUserUSER_SEX: TStringField;
    qryFindUserUSER_PHONE: TStringField;
    qryFindUserUSER_MAIL: TWideStringField;
    qryFindUserUSER_IMAGE: TBlobField;
    qryFindUserUSER_REG_DATE: TDateField;
    qryFindUserUSER_OUT_YN: TStringField;
    qryFindUserUSER_OUT_DATE: TDateField;
    qryFindUserUSER_RENT_COUNT: TIntegerField;
    qryFindUserUSER_SEX_STR: TStringField;
    qryFindBook: TFDQuery;
    qryFindBookBOOK_SEQ: TIntegerField;
    qryFindBookBOOK_TITLE: TWideStringField;
    qryFindBookBOOK_ISBN: TStringField;
    qryFindBookBOOK_AUTHOR: TWideStringField;
    qryFindBookBOOK_PRICE: TIntegerField;
    qryFindBookBOOK_LINK: TWideStringField;
    qryFindBookBOOK_RENT_YN: TStringField;
    qryFindBookBOOK_IMAGE: TBlobField;
    qryFindBookBOOK_DESCRIPTION: TWideMemoField;
    qryUpdateBookState: TFDQuery;
    qryUpdateUserRentCount: TFDQuery;
    procedure qryBookCalcFields(DataSet: TDataSet);
    procedure qryUserCalcFields(DataSet: TDataSet);
    procedure qryRentCalcFields(DataSet: TDataSet);
    procedure qryFindUserCalcFields(DataSet: TDataSet);
    procedure conBookRentalBeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function DuplicatedISBN(ASeq, AISBN: string): Boolean;
    function DuplicatedUser(ASeq: Integer; AName: string;
      ABirth: TDateTime): Boolean;

    procedure ExcuteRent(AUserSeq, ABookSeq: Integer; ARentYN: Boolean);
  end;

var
  dmDataAccess: TdmDataAccess;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses
  System.strUtils, System.IOUtils, Vcl.Forms, Vcl.Dialogs;

{$R *.dfm}

procedure TdmDataAccess.conBookRentalBeforeConnect(Sender: TObject);
var
  Path: string;
begin
  Path := '';
  Path := TPath.GetFullPath('..\');
  Path := TPath.Combine(Path, 'DB');
  Path := TPath.Combine(Path, 'BOOKRENTAL.IB');

  if not TFIle.Exists(Path) then
  begin
    ShowMessage(format('DB�� ã�� �� �����ϴ�.(���:[%s])', [Path]));
    Application.Terminate
  end;

  conBookRental.Params.Values['Database'] := Path;
end;

function TdmDataAccess.DuplicatedISBN(ASeq, AISBN: string): Boolean;
begin
  Result := False;

  qryDuplicatedBook.Close;
  qryDuplicatedBook.ParamByName('ISBN').AsString := AISBN;
  qryDuplicatedBook.Open;

  if (qryDuplicatedBook.RecordCount > 0) and
    (qryDuplicatedBook.Fields[0].AsString <> ASeq) then
    Result := True;

end;

function TdmDataAccess.DuplicatedUser(ASeq: Integer; AName: string;
  ABirth: TDateTime): Boolean;
begin
  Result := False;
  qryDuplicatedUser.Close;
  qryDuplicatedUser.ParamByName('Name').AsString := AName;
  qryDuplicatedUser.ParamByName('Birth').AsDateTime := ABirth;
  qryDuplicatedUser.Open;

  if (qryDuplicatedUser.RecordCount > 0) and
    (qryDuplicatedUser.Fields[0].AsInteger <> ASeq) then
    Result := True;
end;

procedure TdmDataAccess.ExcuteRent(AUserSeq, ABookSeq: Integer;
  ARentYN: Boolean);
begin
  // ���� ������Ʈ
  if ARentYN then
  begin
    // ����
    qryRent.FieldByName('RENT_DATE').AsDateTime := Now;
    qryRent.FieldByName('RENT_RETURN_DATE').AsDateTime := Now + 20;
    qryRent.FieldByName('RENT_RETURN_YN').AsString := 'N';
  end
  else
  begin
    // �ݳ�
    if qryRent.State <> dsEdit then
      qryRent.Edit;

    qryRent.FieldByName('RENT_RETURN_DATE').AsDateTime := Now;
    qryRent.FieldByName('RENT_RETURN_YN').AsString := 'Y';
  end;

  qryRent.Post;
  qryRent.Refresh;

  // ����
  qryUpdateBookState.ParamByName('RENT_YN').AsString :=
    IfThen(ARentYN, 'Y', 'N');
  qryUpdateBookState.ParamByName('SEQ').AsInteger := ABookSeq;
  qryUpdateBookState.ExecSQL;

  // ȸ��
  qryUpdateUserRentCount.ParamByName('SEQ').AsInteger := AUserSeq;
  qryUpdateUserRentCount.ExecSQL;

  qryBook.Refresh;
  qryUser.Refresh;

end;

procedure TdmDataAccess.qryBookCalcFields(DataSet: TDataSet);
var
  RentYN: string;
begin
  RentYN := qryBook.FieldByName('BOOK_RENT_YN').AsString;
  if RentYN = 'Y' then
    qryBook.FieldByName('BOOK_RENT').AsString := '�뿩��'
  else
    qryBook.FieldByName('BOOK_RENT').AsString := '�뿩����';
end;

procedure TdmDataAccess.qryFindUserCalcFields(DataSet: TDataSet);
begin
  if qryFindUserUSER_SEX.AsString = 'M' then
    qryFindUserUSER_SEX_STR.AsString := '����'
  else
    qryFindUserUSER_SEX_STR.AsString := '����';

end;

procedure TdmDataAccess.qryRentCalcFields(DataSet: TDataSet);
begin
  if qryRentRENT_RETURN_YN.AsString = 'Y' then
    qryRentRENT_RETURN.AsString := '�ݳ�'
  else
    qryRentRENT_RETURN.AsString := '�뿩';
end;

procedure TdmDataAccess.qryUserCalcFields(DataSet: TDataSet);
begin
  if qryUser.FieldByName('USER_SEX').AsString = 'M' then
    qryUser.FieldByName('USER_SEX_STR').AsString := '����'
  else
    qryUser.FieldByName('USER_SEX_STR').AsString := '����';

  if qryUserUSER_OUT_YN.AsString = 'Y' then
    qryUserUSER_OUT.AsString := 'Ż��'
  else
    qryUserUSER_OUT.AsString := 'ȸ��';

end;

end.