class Types::QuestionType < Types::BaseObject
  field :id, ID, null: false
  field :title, String, null: false
  field :private, Boolean, null: false
  field :answers, Types::AnswerType.connection_type, null: true
  field :user, Types::UserType, null: false

  def user
    object.user
  end
end

