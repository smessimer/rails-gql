Types::CarType = GraphQL::ObjectType.define do
  name 'CarType'
  description 'Represents a car in the system'

  field :id, !types.ID, 'The ID of the car'
  field :year, types.String, 'Year model of the car'
  field :make, types.String, 'Make of the car'
  field :model, types.String, 'Model of the car'

  field :user, Types::UserType, 'The user who owns the car' do
    resolve ->(post, _args, _ctx) {
      Loaders::PrimaryKeyLoader.for(User).load(post.user_id)
    }
  end
end

