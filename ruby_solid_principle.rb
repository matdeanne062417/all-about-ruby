# --exercise--
# Single Responsibility Principle
class Preparation
    def initialize(no_of_serving, time_per_ing)
        @no_of_serving = no_of_serving
        @time_per_ing = time_per_ing
    end

    def prep_time
        @no_of_serving * @time_per_ing
    end
end

salpicao = Preparation.new(4, 15)
puts salpicao.prep_time

# Open/Closed Principle
class Kitchen
    def cooking(main_ing)
      main_ing.cooking 
      puts "and 20 mins waiting time" 
    end
end

class Meat
    def cooking
        print "15 mins cooking time "
    end
end

class Seafood
    def cooking
        print "10 mins cooking time "
    end
end

order = Kitchen.new
beef = Meat.new
tilapia = Seafood.new

order.cooking(beef)
order.cooking(tilapia) 

# Liskov Substitution Principle
class BusFee
    def fee
        
      print "Please prepare 12 pesos"
    end
  end
  
class Pasig < BusFee
    def fee
       super 
       puts " and add 12 pesos more"
    end
end

class Marikina < BusFee
    def fee
      super
      puts "and add 20 pesos more"  
    end
end


pasig = Pasig.new
marikina = Marikina.new

pasig.fee
marikina.fee

# Interface Segragation Principle

# Dependency Inversion Principle
class Bill
    def type(payment,amount)
        payment.type(amount)
    end
end

class Regular
    def type(amount)
        puts "You have a total of #{amount}"
    end
end

class Senior
    def type(amount)
        @total = amount * 0.85
        puts "You have a total of #{@total}"
    end
end

bill = Bill.new
regular = Regular.new
senior = Senior.new

bill.type(regular, 1000)
bill.type(senior, 1000)

# --end of exercise--





















# Lecture(SOLID)
# S - Single Responsibility Principle
# keep classes and methods small and maintainable
# a class should be responsible of only one aspect of a program
# Example
class Transaction
    def initialize(quantity, price)
        @quantity = quantity
        @price = price
    end

    def compute_total
        @quantity * @price
    end
end

transact = Transaction.new(5, 100)
puts transact.compute_total

# --end--

# Open/Close Principle
# a class should be open for extension and closed for modification
# we should strive for modular designs that make it possible for us to change the behaviour of the system without making modification to the class themselves.
# Example
# (Violation)
class UsageFileParser
    def initialize(client, usage_file)
        @client = client
        @usage_file = usage_file
    end

    def parse
        case @client.usage_file_format
        when :xml
            parse_xml
        when :csv
            parse_csv
        end

        @client.last_parse = Time.now
        @client.save!
    end

    private
    
    def parse_xml
        #parse xml
    end

    def parse_csv
        #parse csv
    end
end

# (Proper)

class UsageFileParser
    def initialize(client, parser)
        @client = client
        @parser = parser
    end

    def parse(usage_file)
        parser.parse(usage_file)
        @client.last_parse = Time.now
        @client.save!
    end
end

class XmlParser
    def parse(usage_file)
        #parse xml
    end
end

class CsvParser
    def parse(usage_file)
        #parse csv
    end
end

# --end--

# Liskov Substitution Principle
# this principle is based on the fact that a derived class must be substitutable by its base class
# you should be able to replace any instances of a parent class with an instance of one of its children without creating any unexpected or incorrect behaviors
# Example
class Rectangle
    def set_height(height)
        @height = height
    end

    def set_width(width)
        @width = width
    end
end

class Square < Rectangle
    def set_height(height)
        super(height)
        @width = height
    end

    def set_width(width)
        super(width)
        @height = width
    end
end

# --end--

# Interface Segragation Principle
# the principle states that a client should not be forced to depend on methods that it does not use
# this principle is less relevant in dynamic languages. Since duck typing languages dont require that types be specified in our code this principle cant be violated
# Example

# Violation
class PostRepository
    def get_all_by_ids(ids:, sort:)
        posts = entity.where(id: ids)
        posts.order(title: :asc) if sort
        posts
    end

    private
    
    def entity
        Post
    end
end
# --Usage--
module Admin
    class PostsController
        def index
            @posts = PostRepository.new.get_all_by_ids(params[:ids], false)
        end
    end
end

module Client
    class HomeController
        def index
            @posts = PostRepository.new.get_all_by_ids(params[:ids], true)
        end
    end
end

# Proper
class PostRepository
    def get_all_by_ids(ids:)
        entity.where(id: ids)
    end

    def get_all_by_ids_sorted(ids:)
        get_all_by_ids(ids).order(title: :asc)
    end

    private
    def entity
        Post
    end
end

module Admin
    class PostsController
        def index
            @posts = PostRepository.new.get_all_by_ids(params[:ids])
        end
    end
end

module Client
    class HomeController
        def index
            @posts = PostRepository.new.get_all_by_ids_sorted(params[:ids])
        end
    end
end

# --end--

# Dependency Inversion Principle
# the Dependency Inversion Principle has to do with high-level(think business logic) objects not depending on low-level(think database querying and IO) implementation details
# Example
class UsageFileParser
    def initialize(client, parser)
        @client = client
        @parser = parser
    end

    def parse(usage_file)
        parser.parse(usage_file)
        @client.last_parse = Time.now
        @client.save!
    end
end

class XmlParser
    def parse(usage_file)
        #parse xml
    end
end

class CsvParser
    def parse(usage_file)
        #parse csv
    end
end

# --end--
