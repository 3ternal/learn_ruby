def translate(str)
  newArray = []
  if str.include?  " "
    arrayOfStrings = str.split(" ")
  end

  vowels = ["a", "e", "i", "o", "u"]
  if arrayOfStrings
    arrayOfStrings.each do |string|
      if vowels.include?(string[0])
        string << "ay"
        newArray << string
      else
        string.each_char do |char|
          if char == "q" and string[string.index(char) + 1] == "u"
            string[0] = ""
            string[0] = ""
            string << "qu"
            string << "ay"
            newArray << string
            break
          end
          if vowels.include?(string[0]) == false
            char = string[0]
            string[0] = ""
            string << char
          else
            string << "ay"
            newArray << string
            break
          end
        end
      end
    end
    return newArray.join(" ")

  else
    if vowels.include?(str[0])
      str << "ay"
    else
      str.each_char do |char|
        if char == "q" and str[str.index(char) + 1] == "u"
          str[0] = ""
          str[0] = ""
          str << "qu"
          str << "ay"
          return str
        end
        if vowels.include?(str[0]) == false
          char = str[0]
          str[0] = ""
          str << char
        else
          str << "ay"
          return str
        end
      end
    end
  end
end

translate("quiet")
