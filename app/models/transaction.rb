class Transaction < ApplicationRecord
  belongs_to :invoice
  enum result: ['default', 'failed', 'success']

  validates :credit_card_number, presence: true
end
