class AddAccountTypeToOperations < ActiveRecord::Migration[5.2]
  def change
    add_column :operations, :account_type, :integer
  end
end
