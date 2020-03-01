class Types::AnswerType < Types::BaseObject
  field :id, ID, null: false
  field :question, Types::QuestionType, null: false
  field :user, Types::UserType, null: false
  field :body, String, null: false

  def user
    object.user
  end
end
