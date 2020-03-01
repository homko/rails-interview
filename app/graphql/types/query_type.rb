class Types::QueryType < Types::BaseObject
  field :questions, Types::QuestionType.connection_type, null: true
  def questions
    Question.all
  end

  field :question, Types::QuestionType, null: true do
    argument :id, ID, required: true
  end
  def question(id:)
    Question.find(id)
  end

  field :answers, Types::AnswerType.connection_type, null: true
  def answers
    Answer.all
  end

  field :answer, Types::AnswerType, null: true do
    argument :id, ID, required: true
  end
  def answer(id:)
    Answer.find(id)
  end

  field :users, Types::UserType.connection_type, null: false, connection: true do
    argument :has_answers, Boolean, required: false
  end

  def users(has_answers: nil)
    case has_answers
      when true
        User.with_answers
      when false
        User.without_answers
      else
        User.all
    end
  end

  field :user, Types::UserType, null: true do
    argument :id, ID, required: true
  end
  def user(id:)
    User.find(id)
  end
end
