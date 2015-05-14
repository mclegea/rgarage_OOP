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
      puts "Name: #{name}"
      puts "City: #{city}" if city
      puts "Adress: #{house}, #{street}" if city && house && street
      puts "Email: #{email}" if email
    end
  
  end
  
end
