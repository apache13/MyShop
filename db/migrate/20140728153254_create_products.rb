class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :code
      t.string :name
      t.string :description
      t.string :volume
      t.decimal :mk_price
      t.decimal :sp_price

      t.timestamps
    end
  end
end
