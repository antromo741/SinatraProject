class Ferret < ActiveRecord::Base
    belongs_to :user, class_name: "User" 
  validates :name, presence: true
  validates :dropff, presence: true
end
