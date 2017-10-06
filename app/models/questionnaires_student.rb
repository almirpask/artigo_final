class QuestionnairesStudent < ApplicationRecord
  belongs_to :questionnaire
  belongs_to :student
end
