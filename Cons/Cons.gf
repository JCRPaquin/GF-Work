abstract Cons = {
  cat EBool;
  data EBool = ETrue | EFalse;

  cat List Type;
  -- data List (t : Type) = Cons t List | Nil;
  
  fun
    Cons : (t : Type) -> t -> List t -> List t;
    Nil : (t : Type) -> List t;
    
    Head : (t : Type) -> List t -> t;
    Tail : (t : Type) -> List t -> List t;
    
    Map : (t1 : Type) -> (t2 : Type) -> (t1 -> t2) -> List t1 -> List t2;
    Filter : (t : Type) -> (t -> EBool) -> List t -> List t;
    Length : (t : Type) -> List t -> Int;
}
