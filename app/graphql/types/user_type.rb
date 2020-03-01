class Types::UserType < Types::BaseObject
  field :id, ID, '',null: false
  field :name, String, '', null: true
  field :questions, Types::QuestionType.connection_type, null: true
  field :answers, Types::AnswerType.connection_type, null: true
end
