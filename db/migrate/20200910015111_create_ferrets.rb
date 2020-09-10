class CreateFerrets < ActiveRecord::Migration
  def change
    create_table :ferrets do |t|
      t.string :name
      t.string :hair
      t.string :short_description

      t.timestamps null: false
    end
  end
end
