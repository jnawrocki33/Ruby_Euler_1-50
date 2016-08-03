def leapYear?(year)

  if year % 4 == 0
    if year%100 == 0
      return true if year% 400 == 0
      return false
    end
    return true

  else
    return false
  end
end


first_of_months = [1, 32, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335] #num day of jan1, feb1, ..., dec1
first_of_months_leap = [1, 32, 61, 92, 122, 153, 183, 214, 245, 275, 306, 336] #leap year





