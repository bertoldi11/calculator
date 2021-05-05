class AssociateProductToType < ActiveRecord::Migration[6.1]
  def change
    change_table :products do |t|
      t.references :type, null: false, foreign_key: true
    end
  end
end
