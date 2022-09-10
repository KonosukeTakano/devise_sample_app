class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.references :user, foreign_key: true
      t.integer :balance, default: 0
      t.timestamps
    end
  end
end
