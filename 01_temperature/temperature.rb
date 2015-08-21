
def ftoc(fahrenheit)
  celsius = (fahrenheit - 32) / 1.8
  celsius.round
end

def ctof(celsius)
  fahrenheit = celsius * (9.0/5.0) + 32
  fahrenheit
end
