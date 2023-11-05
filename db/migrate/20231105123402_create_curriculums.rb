class CreateCurriculums < ActiveRecord::Migration[7.1]
  def change
    create_table :curriculums do |t|
      t.string :name
      t.string :short_name
      t.text :description

      t.timestamps
    end
  end
end
