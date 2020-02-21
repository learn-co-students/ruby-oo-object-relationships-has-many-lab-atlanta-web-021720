class Author

    attr_accessor :post, :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def posts
        Post.all.select {|post|
            post.author == self
        }
    end

    def self.all
        @@all
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self
    end

    def self.post_count
        all_posts = []
        @@all.each {|artist|
            artist.posts.collect {|posts|
            all_posts << posts
            }
        }
        all_posts.count
    end

end