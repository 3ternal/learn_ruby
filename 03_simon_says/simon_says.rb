require "titleize"

def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, num = 2)
  newstr = string + " "
  newstr *= num
  newstr.slice(0, newstr.length - 1)
end

def start_of_word(str, num)
  str.slice(0, num)
end

def first_word(str)
  str.gsub(/\s.+/, "")
end

def titleize(str)
  newstr = str.titlecase()
  newstr[0] = newstr.split[0][0].upcase
  return newstr
end
