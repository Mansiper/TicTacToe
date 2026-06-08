unit uViz;

interface

uses
  Forms, uRTree, Classes, Controls, StdCtrls;

type
  TfViz = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    Memo4: TMemo;
    Memo5: TMemo;
    procedure FormShow(Sender: TObject);
  end;

var
  fViz: TfViz;

procedure Risovalka(Parent: PRNode; Verh: Word);

implementation

{$R *.dfm}

procedure TfViz.FormShow(Sender: TObject);
begin
  AutoScroll:=True;
end;

procedure Risovalka(Parent: PRNode; Verh: Word);
var
  Ptr: PRNode;
begin
  //Рисует данные дерева
  If Parent^.FirstCh<>nil then
  Begin
    Ptr:=Parent^.FirstCh;
    while Ptr<>nil do
    begin
      Risovalka(Ptr, Verh+60);
      Ptr:=Parent^.FirstCh;
    end;
    {if Parent<>FRoot then}
    begin
      Parent^.Parent^.FirstCh:=Parent^.Next;
      Dispose(Parent);
    end;
  End
  Else {if Parent<>FRoot then}
  Begin
    Parent^.Parent^.FirstCh:=Parent^.Next;
    Dispose(Parent);
  End;
end;

end.
