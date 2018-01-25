def consolidate_cart(cart)
  # code here
  consolidated = {}

  cart.each do |hash|
    hash.each do |item, information|
      if !consolidated.keys.include?(item)
        consolidated[item] = information
        consolidated[item][:count] = 1
      else
        consolidated[item][:count] += 1
      end
    end
  end

  consolidated

end

def apply_coupons(cart, coupons)

  cart.each do |item, info|
    coupons.each do |coupon, specs|
    end
  end
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
