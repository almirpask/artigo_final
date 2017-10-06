class AchievementsStudent < ApplicationRecord
  belongs_to :achievement
  belongs_to :student
end
