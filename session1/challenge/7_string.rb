# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  str = ""
  string = string.chars
  string[0..-2].each_with_index {|c,i| str << string[i+1] if c.downcase == "r"}
  str
end
