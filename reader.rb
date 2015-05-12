module Library
  
  class Reader
    attr_reader :name, :email, :city, :street, :house
  
    def initialize(name, options = {})
      @name = name
      @email = options[:email]
      @city = options[:city]
      @street = options[:street]
      @house = options[:house]
    end
    
    def to_s
      puts "Reader #{@name}"
      puts "Adress: #{@city}, #{@house}, #{@street}" unless @city.nil?
      string += " <#{@email}>" unless @email.nil?
      
    end
  
    
  end
  
end
