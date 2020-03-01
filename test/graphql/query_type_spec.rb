require './test/test_helper'

describe Types::QueryType do
  subject { RailsInterviewSchema.execute(query, context: context, variables: variables).to_h }

  let(:answer)    { create(:answer) }
  let(:user)      { answer.user }
  let(:context)   { Hash.new }
  let(:variables) { Hash.new }
  let(:query)     { "{ user(id: #{user.id}){name} }" }
  let(:result)    { {'data'=>{'user'=>{'name'=> user.name}}} }

  it do
    expect(subject.to_h).to eq(result)
  end
end
