class Post
    attr_accessor :name, :author

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def title
        self.name
    end

    def author_name
        if defined? self.author.name
            self.author.name
        else
            return nil
        end
    end
end