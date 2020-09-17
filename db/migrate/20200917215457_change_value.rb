class ChangeValue < ActiveRecord::Migration
  def change
    change_column :ferrets, :picked_up, :boolean, :default => false
  end
end
