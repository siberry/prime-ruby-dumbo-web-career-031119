def prime?(num)
    factors = (2...num.abs).to_a
    a_factor = []
    factors.each do |factor|
      a_factor.push(num.abs % factor == 0)
    end
    t_or_f = a_factor.include?(true) || num.abs == 1 || num == 0
    !t_or_f
end


#e.g. prime?(9) => false, range [2, 3, 4, 5, 6, 7, 8]
# false, true, false, false, false, false, false
#e.g. prime?(7) => true, range [2, 3, 4, 5, 6]
# false, false, etc
