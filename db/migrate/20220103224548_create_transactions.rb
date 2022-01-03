class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.references :invoices, foreign_key: true
      t.integer :credit_card_number
      t.date :credit_card_expiration_date
      t.integer :result, default: nil

      t.timestamps
    end
  end
end