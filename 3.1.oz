
declare
fun lazy {SineRev X K Prev}
   Prev|{SineRev X K+1 ~Prev*X*X/(2*K*(2*K+1))}
end


declare
fun {SinTaylor X}
   {SineRev X 1 X}
end