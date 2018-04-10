program rpg_runtime;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, castle_base, castle_components, mnfrm, RPGTypes
  { you can add units after this };

{$R *.res}
const
  //required to be in the binaries of every D-RPG Suite runtime.
  //I won't accept any pull requests removing or altering the following message.
  //It shall disappear on its own when Kadokawa gets its shit together.
  // - Darkhog
  fuck_you_for_destroying_rm = 'Fuck you, enterbrain, kadokawa and (especially) Yoji Ojima. '+
    			       'You had such a nice piece of software. I mean, '+
                               '2003. But no, you just had to make scripting in '+
                               'the worst way possible. I mean, Ruby? WTF?! Ruby '+
                               'was the reason XP was so slow. Not the infinite '+
                               'tilesets and certainly not the wonderful autotile '+
                               'format. But no, you JUST had to fuck it up even more '+
                               'with VX. I am so glad that the "one tileset for '+
                               'the fucking game" thing didn'+#39+'t made past the '+
                               'VX and was removed in Ace. I'+#39+'m less glad '+
                               'that the other inane changes such as no proper '+
                               'layer mapping (and no, MV doesn'+#39+'t fix that '+
                               'as I still can'+#39+'t select specific layer to '+
                               'put a tile on), limited tileset, and of course '+
                               'my "favorite", broken-ass autotile format that '+
                               'forces you to use graphics that makes everything '+
                               'look like a fucking pokemon game. I'+#39+'m not '+
                               'even against the chibi style, I think it'+#39+'s '+
                               'cute and I really dig the painterly look. BUT it '+
                               'could be done just as well using XP/2k3 autotile '+
                               'format which was not only versatile (any AT could '+
                               'represent anything, walls, roads, rivers), but also '+
                               'easy to make graphics for. The only good things '+
                               'about VX/Ace? Return of multiple characters per file, '+
                               'facesets and message system with a typewriter effect. '+
                               'Why have those been removed in XP? Oh right, because '+
                               'you fucking suck. Yes, I am talking about you, Ojima-baka. '+
                               'You'+#39+'ve enabled those fuckers at ASCII, Enterbrain '+
                               '(though it should be called rather Emptybrain) and '+
                               'Kadokawa/Degica to profit from those half-assed '+
                               'products for years, instead of taking your knowledge '+
                               'away and developing an open-source alternative in '+
                               'a language RM always supposed to be written in - '+
                               'Object, fucking, Pascal. That'+#39+'s what I'+#39've '+
                               'done, and if you became aware of this message, I had '+
                               'a success. Feel free to contribute. Or not, your '+
                               'choice. I am taking best parts of WolfRPGEditor, '+
                               'Open RPG Maker, RPGBoss, TURBU, EasyRPG, RPG20XX and many failed '+
                               'RM alternative projects that I forgot about now '+
                               'and turning it into the ultimate RPG making solution '+
                               'And I'+#39+'m releasing it for free, because I am a '+
                               'nice guy like that. Because fuck you KADOKAWA.';

var
  Kadokawa:String; //making sure message makes safely through compilation. Do not remove.
begin
  KADOKAWA:=fuck_you_for_destroying_rm; //making sure message makes safely through compilation. Do not remove.
  RequireDerivedFormResource:=True;
  Application.Initialize;
  Application.CreateForm(TMainGame, MainGame);
  Application.Run;
end.

