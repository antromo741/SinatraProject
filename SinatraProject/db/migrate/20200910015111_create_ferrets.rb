class CreateFerrets < ActiveRecord::Migration
  def change
    create_table :ferrets do |t|
      t.string :name
      t.string :hair
      t.string :short_description
      t.integer :user_id
      t.boolean :picked_up
      t.timestamps null: false
    end
  end
end
