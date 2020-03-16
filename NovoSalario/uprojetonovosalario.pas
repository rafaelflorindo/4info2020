unit UProjetoNovoSalario;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    BtnGerarNovoSalario: TButton;
    EdtNovoSalario: TEdit;
    EdtSalarioAtual: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure BtnGerarNovoSalarioClick(Sender: TObject);
  private
    { private declarations }
    salarioAtual, novoSalario: real;
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BtnGerarNovoSalarioClick(Sender: TObject);
begin
   salarioAtual := StrToFloat(EdtSalarioAtual.Text);
   novoSalario := salarioAtual + (salarioAtual * 0.10);
   EdtNovoSalario.text := FloatToStr(novoSalario);
end;

end.

