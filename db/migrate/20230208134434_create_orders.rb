class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :customer_id, null:false
      t.string :postal_code, null:false
      t.string :address, null:false
      t.string :name, null:false
      t.integer :shipping_cost, null:false
      t.integer :total_payment, default:0, null:false, limit:1
      t.integer :status, default:0, null:false, limit:1




      t.timestamps
    end
  end
end
