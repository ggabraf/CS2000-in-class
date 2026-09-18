use context starter2024

fun choose-hat(temp :: Number) -> String:
  doc: "either to wear or not to wear a hat based on temp"
  if (temp >= 58) and (temp < 77):
    "no hat"
    
  else if (temp >= 77):
    "cap"
  
  else:
    "winter hat" 
  end
where:
  choose-hat(80) is "cap"
  choose-hat(77) is "cap"
  choose-hat(76.9) is "no hat"
  choose-hat(60) is "no hat"
  choose-hat(58) is "no hat"
  choose-hat(57.9) is "winter hat"
  
end

fun add-glasses(outfit :: String) -> String:
  doc: "add glasses to any outfit"
  
  if (outfit == "cap"):
    "cap and glasses"
    
  else if (outfit == "no hat"):
      "no hat and glasses"
      
  else if (outfit == "winter hat"):
    "winter hat and glasses"
  else:
    outfit + ", and glasses"
  end
  
where:
  add-glasses("cap") is "cap and glasses"
  add-glasses("no hat") is "no hat and glasses"
  add-glasses("winter hat") is "winter hat and glasses"
end

fun
  choose-outfit(temp :: Number) -> String:
  
  hat = choose-hat(temp)
  add-glasses(hat)
  
end

fun
  choose-hat-or-visor(temp :: Number, has-visor :: Boolean) -> String:
  
 if has-visor and (temp > 95):
    "visor"
  
  else:
    choose-hat(temp)
  end
  
end