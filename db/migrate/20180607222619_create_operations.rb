class CreateOperations < ActiveRecord::Migration[5.2]
  def change
    create_table :operations do |t|
      t.belongs_to :stock, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.string :in_strategy
      t.string :out_strategy
      t.datetime :start_time
      t.datetime :end_time
      t.float :tp_price
      t.float :sl_price
      t.float :max_profit
      t.float :max_loss
      t.text :obs

      t.timestamps
    end
  end
end
