declare
fun{FoldL BinOp L I}
   if L.1==nil
   then nil
   else
      if L.2==nil
      then L.1
      else
	 {FoldL BinOp {BinOp L.1 L.2.1}|L.2.2 I}
      end
   end
end