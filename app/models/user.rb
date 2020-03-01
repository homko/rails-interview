class User < ApplicationRecord
  has_many :questions
  has_many :answers

  scope :without_answers, -> do
    joins('LEFT OUTER JOIN answers on users.id = answers.user_id WHERE answers.id IS null')
  end

  scope :with_answers, -> { where.not(id: without_answers) }
end
