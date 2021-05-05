class CreateTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :types do |t|
      t.string :name
      t.string :operation
      t.numeric :value
      t.string :operation_type

      t.timestamps
    end
  end
end
