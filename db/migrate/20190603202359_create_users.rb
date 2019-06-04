class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users, id: :uuid do |t|
      t.text :first_name
      t.text :last_name
      t.text :bio

      t.timestamps
    end
  end
end
