FactoryBot.define do
  factory :book do
    title "The Hate U Give"
    price: 9.90
    author: { create :author }
  end
end

#File needs to include everything you have required in your model
