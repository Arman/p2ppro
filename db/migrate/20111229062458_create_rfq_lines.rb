class CreateRfqLines < ActiveRecord::Migration
  def change
    create_table :rfq_lines do |t|
      t.integer :rfq_id
      t.integer :line_number
      t.string :part_number
      t.string :nsn
      t.integer :quantity
      t.text :description
      t.string :condition_code

      t.timestamps
    end
  end
end
