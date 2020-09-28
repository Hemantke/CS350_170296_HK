declare
fun {IsValidRow R K}
   if R==nil
   then true
   else
      if R.1==0 orelse K==1
      then {IsValidRow R.2 K-1}
      else
	 false
      end
   end
end


declare
fun {IsDiagonal M}
   local Dd in
      fun {Dd M K}
	 case M
	 of nil
	 then true
	 []H|T then if {IsValidRow H K}
		    then {Dd T K+1}
		    else false
		    end
	 
	 end
	 
      end
      {Dd M 1}
   end
end