module Types
  class MutationType < Types::BaseObject

    field :createPost, PostType, null: true do
      description 'Create a new blog post'
      argument :title, String, 'Title of the blog post', required: true
      argument :body, String, 'Content of the blog post', required: true
    end

    def create_post(args)
      post = Post.new(args.to_h)
      post.save
      post
    end
    


    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World"
    end
  end
end
