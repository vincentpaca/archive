# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :page do
    document_id 1
    number 1
    content "MyText"
  end
end
