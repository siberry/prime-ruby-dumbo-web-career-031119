def prime?(num)
    poss_factors = (2...num.abs)
    a_factor = []
    poss_factors.each do |factor|
      a_factor.push(num % factor == 0)
    end
    t_or_f = a_factor.include?(true) || num.abs == 1 || num == 0
    !t_or_f
end
