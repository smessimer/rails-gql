class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars, id: :uuid do |t|
      t.text :model
      t.text :year
      t.text :make
      t.uuid :user_id

        t.timestamps
      end
    end
  end
