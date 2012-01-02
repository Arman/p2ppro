class CreateRfqs < ActiveRecord::Migration
  def change
    create_table :rfqs do |t|
      t.string :status
      t.integer :creator
      t.text :notes

      t.timestamps
    end
  end
end
