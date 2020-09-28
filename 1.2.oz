
declare
fun {Last Xs N}
   local RL in
      fun{RL L}
	 local ReverseAux in
	    fun{ReverseAux R P}
	       case R
	       of nil then P
	       []H|T then {ReverseAux T H|P}
	       end
	    end
	    {ReverseAux L nil}
	 end
      end
      
      
      local Take in
	 fun{Take Xs N}
	    if N=<0
	    then nil
	    else
	       case Xs
	       of nil then nil
	       []H|T then H|{Take T N+~1}
	       end
	    end
	 end
	 {RL {Take {RL Xs} N}}
      end
   end
end