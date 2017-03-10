class Student < ApplicationRecord
  has_many :captsones
  has_many :educations
  has_many :experiences
  has_many :skills
end
