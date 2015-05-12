module Library
  
  class Reader
    attr_accessor :name, :email, :city, :street, :house
  
    def initialize(name, options = {})
      self.name   = name
      self.email  = options[:email]
      self.city   = options[:city]
      self.street = options[:street]
      self.house  = options[:house]
    end
    
    def to_s
      puts "Reader #{@name}"
      puts "Adress: #{@city}, #{@house}, #{@street}" unless @city.nil?
      string += " <#{@email}>" unless @email.nil?
      
    end
  
    
  end
  
end
