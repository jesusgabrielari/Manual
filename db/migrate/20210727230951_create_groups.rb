class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :crew
      t.integer :status
      t.integer :group_type
      t.integer :style

      t.timestamps
    end
  end
end
