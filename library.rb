require "library/version"
require "library/author"
require "library/book"
require "library/reader"
require "library/order"


module Library
  class Library
    
    def initialize()
      @books, @orders, @readers, @authors = [], [], [], []
    end

    def << (book)
      self.add_book(book)
    end

    def add_book (book)
      @books << book
      @authors << book.author unless @authors.include?(book.author)
    end

    def order (book, reader)
      self.add_book(book) unless @books.include?(book)
      @orders << Order.new(book, reader)
      @readers << reader unless @readers.include?(reader)
    end

    def who_often_takes_the_book(book)
      orders = @orders.select {|order| order.book == book}
      readers = orders.map {|order| order.reader}
      _most_common_value(readers)
    end

    def most_popular_book
      books = @orders.map(&:book)
      _most_common_value(books)
    end

    def how_many_people_ordered_one_of_three_most_popular_books
      selected_range = 0..2
      books = @orders.group_by(&:book).sort_by{|item| item.last.size}.reverse!
      popular_books = books[selected_range].map(&:first)
      result = {}

      # Search unique readers for each book
      popular_books.each_with_index do |book, index|
        result[book] = books[index].last.uniq{|offer| offer.reader}.size
      end
      return result
    end

    def save (filename='library.bin')
      raw = Marshal.dump(self)
      File.write(filename, raw)
    end

    def self.load (filename='library.bin')
      unless File.exist? filename
        puts "File '#{filename}' not found. New library created."
        return Library.new
      end
      raw = File.read(filename)
      Marshal.load(raw)
    end

    private
    def _most_common_value(data)
      data.group_by do |item|
        item
      end.values.max_by(&:size).first
    end
  end
end
