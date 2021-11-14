FactoryBot.define do
  sequence :string, aliases: [:first_name, :last_name, :password, :state] do |n|
    "string#{n}"
  end

  sequence :name do |n|
    "name#{n}"
  end

  sequence :text, aliases: [:description] do |n|
    "text#{n}"
  end

  sequence :expired_at do
    Time.now + 2.days
  end
end
