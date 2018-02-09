class Answer < ApplicationRecord
  belongs_to :question
  validates :title, presence: true, length: { minimum: 20 }
  validates :description, presence: true, length: { minimum: 50 }
  validates :question_id, presence: true, numericality: true
end
