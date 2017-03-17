class Skill < ApplicationRecord
    belongs_to :project
    validates :language, :presence => true
end
