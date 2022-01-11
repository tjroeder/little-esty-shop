FactoryBot.define do
  factory :transaction do
    sequence(:credit_card_number) { |n| n.to_s.rjust(16, '0') }
    sequence(:credit_card_expiration_date) { |n| (rand(n)+1).years.from_now }
    traits_for_enum(:result, ['', 'failed', 'success'])

    invoice
  end
end
