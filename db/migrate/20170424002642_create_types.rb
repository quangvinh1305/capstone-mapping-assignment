class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :name
      t.timestamps null: false
    end
    add_reference :things, :type, index: true
    add_foreign_key :things, :types
  end
end
