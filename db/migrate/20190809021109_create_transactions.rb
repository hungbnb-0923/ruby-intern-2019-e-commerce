class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.references :user, foreign_key: true
      t.references :address, foreign_key: true
      t.bigint :total_price
      t.string :note
      t.integer :status
      t.timestamps
    end
  end
end