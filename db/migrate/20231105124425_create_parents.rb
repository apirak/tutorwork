class CreateParents < ActiveRecord::Migration[7.1]
  def change
    create_table :parents do |t|
      t.string :name
      t.string :nickname
      t.string :address

      t.timestamps
    end
  end
end
