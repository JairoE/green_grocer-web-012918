require 'pry'
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

  updated_cart={}

  cart.each do |item, info|
    binding.pry
    coupons.each do |coupon, specs|
      if item == specs[:item]
        if info[:count] == specs[:num]
          updated_cart["#{item} W/ COUPON"] = info
          updated_cart["#{item} W/ COUPON"][:count] = 1
          updated_cart["#{item} W/ COUPON"][:price] = specs[:price]
        elsif info[:count] > specs[:num]
          updated_cart["#{item}"] = info
          updated_cart["#{item}"][:count] = info[:count] - specs[:num]
          updated_cart["#{item} W/ COUPON"] = info
          updated_cart["#{item} W/ COUPON"][:count] = 1
          updated_cart["#{item} W/ COUPON"][:price] = specs[:price]
        end
      end


    end
  end

  updated_cart
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
