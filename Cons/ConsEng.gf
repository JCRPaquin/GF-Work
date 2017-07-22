concrete ConsEng of Cons = open Prelude, Predef, Maybe in {
  lincat EBool = Str;
  --data Bool = True | False;
  lin
    ETrue = "true";
    EFalse = "false";

  lincat List = {v : (Maybe Type); next : (Maybe (List Type))};
  -- data List (t : Type) = Cons t List | Nil;
  
  lin
    --Cons : (t : Type) -> t -> List t -> List t;
    Cons t v n = {v = (Just v); next = (Just n)};

    --Nil : (t : Type) -> List t;

    
    --Head : (t : Type) -> List t -> t;
    --Tail : (t : Type) -> List t -> List t;
    
    --Map : (t1 : Type) -> (t2 : Type) -> (t1 -> t2) -> List t1 -> List t2;
    --Filter : (t : Type) -> (t -> Bool) -> List t -> List t;
    --Length : (t : Type) -> List t -> Int;
}
