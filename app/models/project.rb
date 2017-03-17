class Project < ApplicationRecord
    has_many :skills
    validates :name, :presence => true
    validates :description, :presence => true
end
