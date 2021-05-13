class CreateSeries < ActiveRecord::Migration[6.0]
  def change
    create_table :series do |t|
      t.string :title
      t.string :rating
      t.string :genre

      t.timestamps
    end
  end
end
