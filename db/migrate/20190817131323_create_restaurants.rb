class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :r_name
      t.string :r_type
      t.string :r_description
      t.string :r_review

      t.timestamps
    end
  end
end
