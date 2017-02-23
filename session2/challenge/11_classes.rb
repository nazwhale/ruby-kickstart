# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong
attr_accessor 'bottles'
  def initialize(bottles)
    if bottles < 0
      bottles = 11
    elsif bottles > 99
      bottles = 99
    end
    self.bottles = bottles
    print_song
  end

  def print_song
    until @bottles == 1
      num = englishNumber(@bottles)
      puts "#{num.capitalize} bottles of beer on the wall,"
      puts "#{num.capitalize} bottles of beer,"
      puts "Take one down, pass it around,"
      @bottles -= 1
      num = englishNumber(@bottles)
      puts "#{num.capitalize} bottles of beer on the wall."
    end

    puts "One bottle of beer on the wall,"
    puts "One bottle of beer,"
    puts "Take one down, pass it around,"
    puts "Zero bottles of beer on the wall."
  end

  def englishNumber number
    numString = ''

    onesPlace = ['one',     'two',       'three',    'four',     'five',
                 'six',     'seven',     'eight',    'nine']
    tensPlace = ['Ten',     'Twenty',    'Thirty',   'Forty',    'Fifty',
                 'Sixty',   'Seventy',   'Sighty',   'Ninety']
    teenagers = ['Eleven',  'Twelve',    'Thirteen', 'Fourteen', 'Fifteen',
                 'Sixteen', 'Seventeen', 'Eighteen', 'Nineteen']

    remaining = number
    write = remaining/10
    remaining  = remaining - write*10

    if write > 0
      if ((write == 1) and (remaining > 0))
        numString = numString + teenagers[remaining-1]
        remaining = 0
      else
        numString = numString + tensPlace[write-1]
      end
      if remaining > 0
        numString = numString + '-'
      end
    end

    write = remaining  
    remaining  = 0

    if write > 0
      numString = numString + onesPlace[write-1]
    end

    numString
  end
end
