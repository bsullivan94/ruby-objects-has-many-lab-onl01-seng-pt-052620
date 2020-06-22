class Post 
  attr_accessor :name, :title 

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def author_name
    if self.author
      self.author.name
    else
     puts "My Blog Post!"
    end
  end

  def self.all
    @@all
  end
end