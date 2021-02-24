FactoryBot.define do
  factory :person do
    firstname {"Andrew"}
    lastname  {"Stevens"}
    email     {"andrew@example.com"}
    tags      {["Lead"]}
  end
end