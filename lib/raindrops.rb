class Raindrops
  def convert(number)
    result = ""
    result << "Pling" if number % 3 == 0
    result << "Plang" if number % 5 == 0
    result << "Plong" if number % 7 == 0
    result
  end
end
