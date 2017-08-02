
resource OEither = open Prelude, Predef in {

	oper

		Either : (t1,t2 : Type) -> Type = \t1,t2 -> {
				left : t1;
				right : t2;
				isLeft : Bool;
			};
		Left : (T1,T2 : Type) -> T1 -> (Either T1 T2) = \_,_,v -> {
				left = v;
				right = variants {};
				isLeft = True;
			};
		Right : (T1,T2 : Type) -> T2 -> (Either T1 T2) = \_,_,v -> {
				left = variants {};
				right = v;
				isLeft = False;
			};

		isLeft : (T1,T2 : Type) -> (Either T1 T2) -> Bool =
			\_,_,e -> e.isLeft;
		
		fromLeft : (T1,T2 : Type) -> (Either T1 T2) -> T1 =
			\_,_,e -> case e.isLeft of {
				True  => e.left;
				False => Predef.error "Called fromLeft on a Right Either"
			};
		fromRight : (T1,T2 : Type) -> (Either T1 T2) -> T2 =
			\_,_,e -> case e.isLeft of {
				True  => Predef.error "Called fromRight on a Left Either";
				False => e.right
			};
}

