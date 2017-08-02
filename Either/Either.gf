
abstract Either = {
  
  flags startcat = Phrase;
  cat Phrase;
  
  cat Value Property; cat Property;
  
  fun
    Shape : Property;
    Material : Property;
    
    Circle : Value Shape;
    Rubber : Value Material;

    Sentence : (p : Property) -> Value p -> Phrase;
}

