use context starter2024

fun greeting(name :: String):
  "welcome, " + name
end

greeting("Gabriel")

# draw a three layer image of a cake ------



#
fun
  Three-layer-cake(c1 :: String, c2 :: String, c3 :: String):  
  
  Cpink = rectangle(100, 30, "solid", c1)
  Cbrown = rectangle(100, 30, "solid", c2)
  Cred = rectangle(100, 30, "solid", c3)
  
  Cbrown-red = above(Cbrown, Cred)
  
  above(Cpink,Cbrown-red)
end

# next excersice

fun
  Tshirt-cost-op(amt :: Number, letters :: String):

  (amt * 5.00) + (string-length(letters) * 0.10)
end