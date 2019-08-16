class CreateModalities < ActiveRecord::Migration[5.2]
  def change
    create_table :modalities do |t|
      t.string :name

      t.timestamps
    end
  end
end
