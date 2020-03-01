FactoryBot.define do
  factory :question do
    user
    title { FFaker::HipsterIpsum.sentence.gsub(/\.$/, "?") }
    private { FFaker::Boolean.random }
  end
end
