# Create objects that implement Polymorphism by Inheritance and Duck-typing

# Thru DuckTyping
class Kitchen
    def main(food)
        food.main
    end
end

class Meats
    def main
        puts "This should be cook for 30 mins"
    end
end

class Poultry
    def main
        puts "This should be cook for 1 hour"
    end
end

cooking = Kitchen.new
burger = Meats.new
cooking.main(burger)

chicken_wings = Poultry.new
cooking.main(chicken_wings)

# Thru Inheritance
class MainKitchen
    def initialize(menu, ingredient, cooking_time)
        @menu = menu
        @ingredient = ingredient
        @cooking_time = cooking_time
    end

    def cook
        puts "This #{@menu} has a main ingredient which is #{@ingredient} and waiting time of #{@cooking_time}"
    end
end

class Meat < MainKitchen
    def cook
        puts "Your #{@menu} will be served early because it will only take #{@cooking_time} because it is mostly of #{@ingredient}"
    end
end

class Chicken < MainKitchen
    def cook
        puts "#{@menu} will be served late because it will take #{@cooking_time} for the #{@ingredient} to be fully cooked"
    end
end

ultimate_burger = Meat.new('Ultimate Burger', 'Ground Beef', '20 mins')
ultimate_burger.cook

roast_chicken = Chicken.new('Roasted Chicken', 'Chicken', '60 mins')
roast_chicken.cook

# class Transaction
#     def initialize(quantity, price)
#         @quantity = quantity
#         @price = price
#     end

#     def total
#         @quantity * @price
#     end
# end

# transact = Transaction.new(5, 100)
# puts transact.total

# class Transaction
#     def initialize(quantity, price, discount=false)
#         @quantity = quantity
#         @price = price
#         @discount = discount
#     end

#     def total_transaction
#         total_price - get_discount
#     end

#     private
#     def total_price
#         @quantity * @price
#     end

#     def get_discount
#         discount_price = @discount ? 10 : 0
#     end
# end

# transact = Transaction.new(10, 899, true)
# puts transact.total_transaction

# # Polymorphism using inheritance
# class Person
#     def initialize(first, last, age)
#         @first_name = first
#         @last_name = last
#         @age = age
#     end

#     def birthday
#         @age += 1
#     end

#     def introduce
#         puts "Hi Everyone, My name is #{@first_name} #{@last_name}."
#     end
# end

# class Student < Person
#     def introduce
#         puts "Hello Teacher, My name is #{@first_name} #{@last_name}."
#     end
# end

# class Teacher < Person
#     def introduce
#         puts "Hello Class, My name is #{@first_name} #{@last_name}"
#     end
# end

# john = Student.new("John", "Doe", 18)
# john.introduce
# imee = Teacher.new("Imee", "Santos", 35)
# imee.introduce

# #Polymorphism Using Dynamic

# class Payment
#     def type(payment)
#         payment.type
#     end
# end

# class FullyPaid
#     def type
#         puts "Fully paid payment"
#     end
# end

# class Installment
#     def type
#         puts "Installment payment"
#     end
# end

# customer_payment = Payment.new
# full = FullyPaid.new
# customer_payment.type(full)

# installment = Installment.new
# customer_payment.type(installment)