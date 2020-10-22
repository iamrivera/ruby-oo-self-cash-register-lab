require 'pry'

class CashRegister 
    attr_accessor :total, :discount, :items, :prices, :last_transaction_amount

    def initialize(discount = 20)
        @total = 0
        @discount = discount
        @items = []
        # @prices = []
    end

    def add_item(title, price, quantity = 1)
        # @title = title
        @total += price * quantity
        quantity.times do 
         @items << title 
        end
        # quantity.times do 
        # @prices << price 
        # end
        @last_transaction_amount = price*quantity
    end

    def apply_discount
        # binding.pry
        @total = @total * (1-(@discount.to_f/100))
        if @total <= 0 
            "There is no discount to apply."
        else
        "After the discount, the total comes to $#{@total.to_i}."
        end


    end

    def void_last_transaction 
        # binding.pry 
        # self.total = self.total - @prices.pop 
       @total -= @last_transaction_amount
    end


end


