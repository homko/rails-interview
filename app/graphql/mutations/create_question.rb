class Mutations::CreateQuestion < Mutations::BaseMutation
  argument :user_id, ID, required: true
  argument :private, Boolean, required: false
  argument :title, String, required: true

  field :question, Types::QuestionType, null: false
  field :errors, [String], null: false

  def resolve(title:, user_id:, private)
    question = Question.new(user_id: user_id, title: title, private: private)
    if (question.save)
      {
        question: question,
        errors: []
      }
    else
      {
        question: nil,
        errors: question.errors.full_messages
      }
    end
  end
end
