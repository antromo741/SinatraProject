class Ferret < ActiveRecord::Base
    belongs_to :user
  #validates :name, presence: true
  #validates :dropff, presence: true
end
