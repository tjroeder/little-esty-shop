FactoryBot.define do
  factory :customer do
    sequence(:first_name) { |n| "fn_#{n}" }
    sequence(:last_name) { |n| "ln_#{n}" }

    factory :customer_with_transactions do
      transient do
        transaction_count { 1 }
      end

      after(:create) do |customer, evaluator|
        evaluator.transaction_count.times do
          invoice = create(:invoice, customer: customer)
          transaction = create(:transaction, invoice: invoice)
          customer.reload
        end
      end
    end
  end
end
