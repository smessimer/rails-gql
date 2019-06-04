class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments, id: :uuid do |t|
      t.text :body
      t.uuid :user_id
      t.uuid :post_id

      t.timestamps
    end
  end
end
