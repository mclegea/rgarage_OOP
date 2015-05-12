module Library
  
  class Reader
    attr_reader :name, :email, :city, :street, :house
  
    def initialize(name, email = nil, city = nil, street = nil, house = nil)
      @title = title
      @author = author
    end
    
    def to_s
      puts "Book \"#{title}\" by #{author}"
    end
  
    
  end
  
end
