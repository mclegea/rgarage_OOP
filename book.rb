
module Library
  
  class Book
    attr_reader :title, :author
  
    def initialize(title, author)
      self.title = title
      self.author = author
    end
    
    def to_s
      puts "Book \"#{title}\" by #{author}"
    end
  
    
  end
  
end
