def prime?(num)
    range = (2...num.abs).to_a
    factor = []
    range.each do |poss_factor|
      factor.push(num.abs % poss_factor == 0)
    end
    t_or_f = factor.include?(true) || num.abs == 1 || num == 0
    !t_or_f
end


#e.g. prime?(9) => false, range [2, 3, 4, 5, 6, 7, 8]
# false, true, false, false, false, false, false
#e.g. prime?(7) => true, range [2, 3, 4, 5, 6]
# false, false, etc
