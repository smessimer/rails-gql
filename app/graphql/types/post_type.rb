Types::PostType = GraphQL::ObjectType.define do
  name 'PostType'
  description 'Represents a blog post in the system'

  field :id, !types.ID, 'The ID of the blog post'
  field :title, types.String, 'A user-friendly title for the blog post'
  field :body, types.String, 'The main body of content for the blog post'

  field :user, Types::UserType, 'The user who wrote the blog post' do
    resolve ->(post, _args, _ctx) {
      Loaders::PrimaryKeyLoader.for(User).load(post.user_id)
    }
  end

  field :comments, types[Types::CommentType], 'Comments that have been made about this post'

  # custom fields
  field :shortbody, types.String, 'A shortened body for the blog post' do
    resolve ->(obj, args, ctx) {
      obj.body[0,5]
    }
  end

end
