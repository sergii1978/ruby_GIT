class Item
    name = 'Dasha'
    def price
        @price
    end

    def price=(value)
        @price = value
    end

    def initialize
        @price = 30
    end
end

item1 = Item.new
item2 = Item.new

# item1.price = 10
item2.price = 20

p item1.price
p item2.price