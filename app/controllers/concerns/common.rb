module Common
    extend ActiveSupport::Concern
  
    module ClassMethods
      ## This is a Class method, call it just like you call any other class method
    end
  def calculate_sales(foods)
    {
        units: foods.sum {|food| food.sold_qty },
        # TODO: have appropriate currency handling, since we started with dollar-like values, divided by 100
        revenue: (foods.sum {|food| food.sold_qty * food.price }) / 100
    } 
  end
end
