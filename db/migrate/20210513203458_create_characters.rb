class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :age
      t.string :weight
      t.string :story

      t.timestamps
    end
  end
end
