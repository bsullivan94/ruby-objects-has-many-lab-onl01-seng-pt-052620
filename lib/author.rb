class Author
  attr_accessor :name
  attr_reader :songs

  @@post_count = 0

  def initialize(name)
    @name = name
  end
  
  def posts 
    Post.all.select do |post|
      post.author == self
  end
end

  def add_post(post)
    post.author = self
  end

  def add_post_by_name(name)
    s = Post.new(name)
    self.add_post(s)
    s
  end
  
 def self.post_count
   Post.all.count 
 end
end