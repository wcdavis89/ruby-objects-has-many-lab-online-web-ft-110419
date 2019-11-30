class Post
  attr_accessor :author, :title
  
  @@all=[]

  def initialize(title)
    @title=title
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def author_name
    if @author == nil 
      return nil
    else
    self.author.name
  end
  end

end


class Author 
  attr_accessor :name, :post
  
  @@post_count=0
  
 def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
    @@post_count += 1
  end

end
