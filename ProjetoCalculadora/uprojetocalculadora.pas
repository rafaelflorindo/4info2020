unit UProjetoCalculadora;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    edtValor: TEdit;
    edtResultado: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
     operacao: string;
     valor1: Integer;
     valor2: Integer;
     resultado: Double;
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  valor1 := StrToInt(edtValor.Text);
  operacao := 'soma';
  edtValor.Text:='';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  valor1:= StrToInt(edtValor.Text);
  operacao := 'subtrair';
  edtValor.Text:='';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  valor1:= StrToInt(edtValor.Text);
  operacao := 'multiplicar';
  edtValor.Text:='';
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  valor1:= StrToInt(edtValor.Text);
  operacao := 'dividir';
  edtValor.Text:='';
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  valor2:= StrToInt(edtValor.Text);
  if(operacao = 'soma') then
  begin
    resultado := valor1 + valor2;
  end;
  edtValor.Text:='';
  edtResultado.Text:= FloatToStr(resultado);
  //lbResultado.caption := edtNome.text;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  edtValor.Text:='';
  edtResultado.Text:='';
  valor1:=0;
  valor2:=0;
end;

end.

