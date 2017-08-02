
concrete EitherEng of Either =
  open Prelude, OEither in {
  
  lincat Phrase = Str;
  lincat Property = Str;
  
  lincat Value = Either Str Str;

  lin
    Shape = "shape";
    Material = "material";
    
    Circle = (Left Str Str "circle");
    Rubber = (Right Str Str "rubber");

    Sentence prop val =
    "the object's" ++ prop ;
}

