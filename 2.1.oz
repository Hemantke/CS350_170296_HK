declare
fun {ZipWith BinOp Xs Ys}
   if Xs==nil
   then nil
   else
      {BinOp Xs.1 Ys.1}|{ZipWith BinOp Xs.2 Ys.2}
   end
end