unit mnfrm;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs,
  CastleControls, CastleOnScreenMenu, CastleControl, CastleGLImages,CastleImages, CastleVectors;

type

  { TMainGame }

  TMainGame = class(TForm)
    GameArea: TCastle2DControl;
    procedure GameAreaRender(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    Screen:TGLImage;
    TitleImage:TGLImage;
  public

  end;

var
  MainGame: TMainGame;

implementation

{$R *.lfm}

{ TMainGame }

procedure TMainGame.GameAreaRender(Sender: TObject);
begin

end;

procedure TMainGame.FormCreate(Sender: TObject);
var
  RGBIma:TRGBImage;
  Black:TVector4Byte;
begin
  //setting up the base settings
  GameArea.SceneManager.Transparent:=true;
  TitleImage:=TGLImage.Create('file://'+ExtractFilePath(Application.ExeName)+'/data/titles/Psychodelic Bricks.png',false);
  RGBIma:=TRGBImage.Create(640,480);
  Black.X:=0;
  Black.Y:=0;
  Black.Z:=0;
  Black.W:=1;
  RGBIma.Clear(Black);
  Screen:=TGLImage.Create(RGBIma,false);
end;

end.

