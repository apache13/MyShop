class CreateIntervals < ActiveRecord::Migration
  def change
    create_table :intervals do |t|
      t.string :detail

      t.timestamps
    end
  end
end
