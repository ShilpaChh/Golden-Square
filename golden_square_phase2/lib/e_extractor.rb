# test droven approach with three small iterations

def e_extractor(str)
    ##if str.include? "e"
        letters = str.chars 
        # turning str into letters
        #letters.find
=begin        
        e_idx = letters.index("e") #finding the index where e is
        before_e = str[0, e_idx] #getting the part before index
        after_e = str[e_idx + 1, str.length] #getting the part after the index
        "e#{before_e}#{after_e}" #putting e in the front and then the rest of the string
        #this will give error if we have nultiple e's, so try this below
=end

#e_letters = letters.select { |s| s == "e" }
#non_e_letters = letters.select { |s| s != "e" }
#return "#{e_letters.join}#{non_e_letters.join}"
   
#OR

e_letters = letters.select { |s| s == "e" }.join
non_e_letters = letters.select { |s| s != "e" }.join
return e_letters + non_e_letters

  ##  else
    ##    return str
  ##  end
end