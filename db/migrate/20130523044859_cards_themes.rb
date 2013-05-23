class CardsThemes < ActiveRecord::Migration
  def change
    create_table :cards_themes do |t|
      t.references :card
      t.references :theme
      t.timestamps
    end
  end
end
