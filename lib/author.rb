
class Author
    attr_accessor :name

    @@all = []
    def initialize(name)
        @name = name 
        @@all << self
    end

    def self.all
        @@all
    end

    def posts
        #posts of that author 
        Post.all.select{|post| post.author == self}
    end
    def add_post(post)
        post.author = self
    end
    def add_post_by_title(post_title)
        post = Post.new(post_title)
        self.add_post(post)
    end

    def self.post_count
        Post.all.count
    end




    
end