unit Unit1;
{$mode objfpc}{$H+}
interface

uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Menus, math, Unit2;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    GroupBox2: TGroupBox;
    Image1: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label3: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label4: TLabel;
    Label40: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{ TForm1 }

procedure TForm1.FormActivate(Sender: TObject);
begin
  DefaultFormatSettings.DecimalSeparator:='.';

end;

procedure TForm1.Button1Click(Sender: TObject);
var
  Va: double;
  Vb: double;
  Hpump: double;
  Wpump: double;

begin
  label9.Visible:=true;
  label10.Visible:=true;
  label11.Visible:=true;
  Va:=  (strtofloat(edit9.text)) / (  pi*( power((strtofloat(edit5.text)/1000)/2,2)) );

  label11.caption:= edit9.text+' m^3/s = Va*[pi*('+ floattostr((strtofloat(edit5.text)/1000)/2) +'m)^2]';

  label12.visible:= true;
  label12.Caption:= 'Va = '+floattostr(roundto(Va,-2))+' m/s';


  label13.Visible:=true;
  label14.Visible:=true;
  Vb:=  (strtofloat(edit9.text)) / (  pi*( power((strtofloat(edit1.text)/1000)/2,2)) );

  label14.caption:= edit9.text+' m^3/s = Vb*[pi*('+ floattostr((strtofloat(edit1.text)/1000)/2) +'m)^2]';

  label15.visible:= true;
  label15.Caption:= 'Va = '+floattostr(roundto(Vb,-2))+' m/s';


  label16.visible:= true;
  label17.visible:= true;
  label18.visible:= true;
  label19.visible:= true;
  label20.visible:= true;
  label21.visible:= true;
  label22.visible:= true;
  label23.visible:= true;
  label24.visible:= true;
  label25.visible:= true;
  label26.visible:= true;
  label27.visible:= true;

  label17.caption:= edit8.text+'(10^3) N/m^2';
  label19.caption:= '(1000 kg/m^3)(9.81m/s^2)';

  label21.caption:= '('+floattostr(roundto(Va,-2))+'m/s^2)^2';
  label23.caption:= '2(9.8m/s^2)';

  label20.caption:= edit6.text+'(10^3) N/m^2';
  label22.caption:= '(1000 kg/m^3)(9.81m/s^2)';

  label25.caption:= '('+floattostr(roundto(Vb,-2))+'m/s^2)^2';
  label24.caption:= '2(9.8m/s^2)';
  label27.caption:= edit2.text + 'm + 0 + 0';


  label28.visible:=true;

  Hpump:= ( (strtofloat(edit8.text)*1000)/(1000*9.81) ) + ((Va*Va)/(2*9.81));
  Hpump:= ( (strtofloat(edit6.text)*1000)/(1000*9.81) ) + ((Vb*Vb)/(2*9.81)) + strtofloat(edit2.text) - Hpump;

  label28.caption:= 'hpump = '+floattostr(roundto(Hpump,-2))+' m';



  label29.visible:= true;
  label30.visible:= true;
  label31.visible:= true;
  label32.visible:= true;
  label33.visible:= true;
  label34.visible:= true;

  label34.Caption:= '('+edit9.text+' m^3/s)(1000 kg/m^3)(9.81 m/s^2)('+floattostr(roundto(Hpump,-2))+'m)';

  label35.visible:= true;
  label36.visible:= true;
  label37.visible:= true;

  Wpump:= strtofloat(edit9.text)*1000*9.81*Hpump;

  label37.caption:= floattostr(roundto(Wpump/1000,-2))+' kW';

  label38.visible:= true;
  label39.visible:= true;
  label40.visible:= true;


  label40.caption:=  label37.caption;


end;

procedure TForm1.MenuItem2Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
  form2.showmodal;//só deixa trabalhar nesse formulário
end;

initialization
  {$I unit1.lrs}

end.



