class CreateWines < ActiveRecord::Migration[5.2]
  def change
    create_table :wines do |t|
      t.string :name
      t.date :year
      t.string :vineyard

      t.timestamps
    end
  end
end
