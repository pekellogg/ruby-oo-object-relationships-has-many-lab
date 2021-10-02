class Post

    @@all = []

    def self.all
        @@all
    end

    attr_accessor :title, :author

    def initialize(title)
        @title = title
        self.save
    end

    def save
        self.class.all << self
    end

    def author_name
        self.author.name if self.author
    end

end