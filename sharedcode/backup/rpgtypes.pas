unit RPGTypes;

{$mode objfpc}{$H+}

interface

uses
		  Classes, SysUtils, Generics.Collections;
type
  //add forward declarations as needed
  TRPGActor = class;
  //list definitions
  TCardinalList = specialize TList<Cardinal>;
  TRPGActorList = specialize TObjectList<TRPGActor>;
  //Base classes declarations
  TRPGStatCurveList = class (TObject)
      public
          hpcurve : TCardinalList;
          mpcurve : TCardinalList;
          atkcurve : TCardinalList;
          defcurve : TCardinalList;
          matkcurve : TCardinalList;
          mdefcurve : TCardinalList;
          luckcurve : TCardinalList;
          agicurve : TCardinalList;
  end;

  TRPGClass = class(TObject)
      public
          StatCurves:TRPGStatCurveList;
          Name:String;

  end;
  TRPGStats = record
    HP,MP,Def,Atk,MAtk,MDef,Luck,Agi:Cardinal;
  end;

  //TRPGActor is used as a parent for other classes such as TRPGMonster
  TRPGActor = class(TObject)
     public
         Name:String;
         RPGClass:TRPGClass;
         InitialLevel:Cardinal; //level the actor starts at
         MaximumLevel:Cardinal; //max actor level
         Stats:TRPGStats;
         StatCurves:TRPGStatCurveList;
  end;
  TRPGSystem = class(TObject)
      	GameTitle:String;
        GameVersion:String;
        TitleImage:String;
        ShowGameTitle:String;
        ResX,ResY:Cardinal;
        StartFullscreen:Boolean;
        TitleMusic:string;
  end;

  TRPGDatabase = class(TObject)
  	public
        Actors: TRPGActorList;
        System:TRPGSystem;
  end;
  TRPGGame = class(TObject)
    public
  		RPGDatabase : TRPGDatabase;
  end;

implementation

end.

