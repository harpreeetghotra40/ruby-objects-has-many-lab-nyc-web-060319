class Author

    attr_accessor :name, :posts
    @@posts = []

    def initialize(name)
        @name = name
        @posts = []
    end

    def add_post(post)
        post.author = self
        @posts << post
        @@posts << post
    end

    def add_post_by_title(title)
        self.add_post(Post.new(title))
    end

    def self.post_count
        @@posts.length
    end

end