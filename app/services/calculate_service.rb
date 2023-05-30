# PRO: Simple service, calculations seems correct.
# CON: It could have a few unit tests to make
# sure the service functionality is correct.
class CalculateService
  def initialize(cart)
   @cart = cart 
  end
  
  def call 
    discount = calculate_discount
    
    updated_items = apply_discount(discount)

    { 
      cart: {
        reference: @cart.id,
        lineItems: updated_items
      }
    }
  end
  
  private 

  def apply_discount(discount)
    @cart.cart_items.map do |item|
      { name: item.line_item.name, original_price: item.line_item.price, price: calculate_price_discount(item, discount)}
    end
  end 

  def calculate_price_discount(item, discount)
   return item.line_item.price if item.line_item.keto?  
   # CON: It seems like line_item.price could be nil and the
   # service would raise: NoMethodError: undefined method `*' for nil:NilClass'
   # We're not handling this error to return a proper message
   # to the API user.
    item.line_item.price * (1.0 - discount / 100.0)
  end

  def calculate_discount
     discountable_items = @cart.line_items.discountable.count
     case discountable_items
     when 0..1
      0
     when  2 
      5
     when 3
      10
     when 4
      20
     else 
      25
    end
  end
end

