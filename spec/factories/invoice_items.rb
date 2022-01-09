FactoryBot.define do
  factory :invoice_item do
    sequence(:quantity)
    sequence(:unit_price)
    traits_for_enum(:status, ['pending', 'packaged', 'shipped'])

    item
    invoice
  end
end
