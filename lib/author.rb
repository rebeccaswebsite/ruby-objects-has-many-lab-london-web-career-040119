class Author
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def posts
    Post.all.select { |post| post.author == self }
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(post_title)
    add_post(Post.new(post_title))
  end

  def self.post_count
    Post.all.count
  end

end
