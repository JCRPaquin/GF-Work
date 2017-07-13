abstract Cubes = {
  cat Object; Relation;
  
  fun
    Cube : Int -> Object;

    Above : Object -> Object -> Relation;
    Below : Object -> Object -> Relation;
}
