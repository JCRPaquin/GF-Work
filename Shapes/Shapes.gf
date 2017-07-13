abstract Shapes = {
  cat Shape; RelType;
  data Shape = Cube | Sphere | Box | Tet;
  data RelType = Above | Below;

  cat Object Shape Int; Relation RelType;

  fun
    Obj : (s : Shape) -> (i : Int) -> Object s i;
    Rel : (s1,s2 : Shape) -> (i1,i2 : Int) -> (rel : RelType) ->
            Object s1 i1 -> Object s2 i2 -> Relation rel;
}
