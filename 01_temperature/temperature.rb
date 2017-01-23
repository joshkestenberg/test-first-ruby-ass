# 1. One degree fahrenheit is 5/9 of one degree celsius
# 2. The freezing point of water is 0 degrees celsius but 32 degrees fahrenheit
def ftoc(f)
  ((f - 32) * (5.0/9.0)).to_i
end

def ctof(c)
  (c / (5.0/9.0) + 32).to_i
end
