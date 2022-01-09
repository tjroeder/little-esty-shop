class Customer < ApplicationRecord
  has_many :invoices
  has_many :invoice_items, through: :invoices
  has_many :items, through: :invoice_items
  has_many :merchants, through: :items
  has_many :transactions, through: :invoices

  validates :first_name, presence: true
  validates :last_name, presence: true

  def customer_full_name
    first_name + " " + last_name
  end
end
