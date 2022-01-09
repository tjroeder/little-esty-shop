FactoryBot.define do
  factory :invoice do
    traits_for_enum(:status, ['in progress', 'cancelled', 'completed'])

    customer
  end
end
