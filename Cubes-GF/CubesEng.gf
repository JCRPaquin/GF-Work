concrete CubesEng of Cubes = {
  lincat
    Object = Str;
    Relation = Str;
    -- Relation = {op1 : Object; op2 : Object};
  
  lin
    Cube i = "cube" ++ i.s;

    Above left right = left ++ "is above" ++ right; 
    Below left right = left ++ "is below" ++ right;
}
