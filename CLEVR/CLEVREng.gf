concrete CLEVREng of CLEVR =
  open SyntaxEng,
       ParadigmsEng,
       SentenceEng,
       Prelude in {
	
	lincat Phrase = Utt;


	-- CLEVR categories
	lincat Value, Property = A;

	lincat Object, Group = NP;

	lincat Number; -- Bool;

	-- CLEVR functions
	fun
	  Count : Group -> Number;

	  --Exist : Group -> Bool;

	  And, Or : Group -> Group -> Group;

	  Filter : (p : Property) -> Value p -> Group -> Group;

	  Query : (p : Property) -> Object -> Value p;

	  --EqVal : (p : Property) -> Value p -> Value p -> Bool;

	  --EqNum, LessThan, GreaterThan : Number -> Number -> Bool;

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
	fun
	  Shape, Size, Material, Color, Location : Property;

	  Cube, Sphere, Cylinder : Value Shape;
	  
	  Small, Large : Value Size;

	  Metal, Rubber : Value Material;

	  Gray, Blue, Brown, Yellow, Red, Green, Purple, Cyan : Value Color;

	  Front, Behind, Left, Right : Value Location;
}