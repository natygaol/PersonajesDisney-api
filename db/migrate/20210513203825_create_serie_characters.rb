class CreateSerieCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :serie_characters do |t|
      t.references :character, null: false, foreign_key: true
      t.references :serie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
