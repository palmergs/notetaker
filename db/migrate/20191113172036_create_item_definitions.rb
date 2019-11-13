class CreateItemDefinitions < ActiveRecord::Migration[6.0]
  def change
    create_table :item_definitions do |t|
      t.string :name
      t.text :description
      t.string :data_type
      t.string :data_parent

      t.timestamps
    end
  end
end
