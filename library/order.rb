module Library
  
  class Order
    attr_accessor :book, :reader, :date
  
    def initialize(book, reader)
      self.book   = book if is_a? Book
      self.reader = reader if is_a? Reader
      self.date   = Time.new
    end
    
    def to_s
      puts "Book \"#{title}\", reader: #{reader}, order's date: #{date.strftime "%d-%m-%Y"}"
    end
  
  end
  
end
