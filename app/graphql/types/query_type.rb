module Types
  class QueryType < BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :post, PostType, null: true  do
      description 'Retrieve a blog post by id'
      argument :id, ID, 'The ID of the blog post to retrieve', required: true
    end
    def post(id:)
      Post.find(id)
    end

    field :posts, [PostType], null: true do
      description 'Retrieve a list of all blog posts'
    end
    def posts
      Post.all
    end

    field :comments, [CommentType], null: true do
      description 'Retrieve a list of all comments'
    end
    def comments
      Comment.all
    end

    field :users, [UserType], null: true do
      description 'Retrieve a list of all users'
    end
    def users
      User.all
    end

    field :cars, [CarType], null: true do
      description 'Retrieve a list of all cars'
    end
    def cars
      Car.all
    end
  end
end
