module Library
  class Author
    attr_accessor :name, :biography

    def initialize(name, biography=nil)
      self.name = name
      self.biography = biography
    end

    def to_s
      "#{name}"
    end
  end
end
