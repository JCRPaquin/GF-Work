concrete CLEVREng of CLEVR =
  open SyntaxEng,
       ParadigmsEng,
       SentenceEng,
       Prelude in {
	
	lincat Phrase = Utt;


	-- CLEVR categories
	lincat Value = Str; -- Str type because we can't contain the relevant types in this. VP doesn't work.
	       Property = N;

	lincat Object, Group = NP;

	lincat Number = S; -- Bool;

	-- CLEVR functions
	fun
	  Count : Group -> Number;

	  And, Or : Group -> Group -> Group;

	  Filter : (p : Property) -> Value p -> Group -> Group;

	  Query : (p : Property) -> Object -> Value p;

	  Same : Property -> Object -> Group;

	  Relate : (p : Property) -> Value p -> Object -> Group;

	  Unique : Group -> Object;


	-- Top level functions
	fun
	  TCount, TExist : Group -> Phrase;

	  TQuery : Property -> Object -> Phrase;

	  TEqVal : (p : Property) -> Value p -> Value p -> Phrase;

	  TEqNum, TLessThan, TGreaterThan : Number -> Number -> Phrase;

	  TSame : Property -> Object -> Phrase;

	  TRelate : (p : Property) -> Value p -> Object -> Phrase;

	  TUnique : Group -> Phrase;


	-- Property and value types
	lin
	  Shape = mkN "shape";
	  Size = mkN "size";
	  Material = mkN "material";
	  Color = mkN "color";
	  Location = mkN "location";

	  Cube = variants {"cube"; "block"};
	  Sphere = variants {"sphere"; "ball"};
	  Cylinder = "cylinder";

	  -- Cube also known as 'block'
	  -- Sphere also known as 'ball'
	  
	  Small = "small";
	  Large = "large";

	  Metal = variants {"metal"; "shiny"};
	  Rubber = variants {"rubber"; "matte"};
	  -- Metal also known as 'shiny'
	  -- Rubber also known as 'matte'

	  Gray = variants {"gray"; "grey"};
	  Blue = "blue";
	  Brown = "brown";
	  Yellow = "yellow";
	  Red = "red";
	  Green = "green";
	  Purple = "purple";
	  Cyan = "cyan";

	  Front = "front";
	  Behind = "behind";
	  Left = "left";
	  Right = "right";
}