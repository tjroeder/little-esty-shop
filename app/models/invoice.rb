class Invoice < ApplicationRecord
  include ApplicationHelper
  belongs_to :customer
  has_many :invoice_items
  has_many :items, through: :invoice_items
  has_many :transactions
  has_many :merchants, through: :items

  enum status: ['in progress', 'cancelled', 'completed']

  # Class Methods
  def self.incomplete_list
    joins(:invoice_items).where('invoice_items.status != ?', 2).select('invoices.*').group('invoices.id')
  end

  def self.order_created_at
    order('invoices.created_at')
  end

  # Instance Methods
  def created_at_formatted
    created_at.strftime("%A, %B %-d, %Y")
  end

  def customer_full_name
    self.customer.first_name + ' ' + self.customer.last_name
  end

  def items_ready_ship
    invoice_items.where('invoice_items.status = ?', 1)
  end

  def total_revenue
    cents_to_dollars(invoice_items.sum('unit_price * quantity'))
  end
end
