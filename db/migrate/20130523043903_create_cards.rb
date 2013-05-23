class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :title
      t.text :what_for
      t.text :how
      t.text :needs
      t.text :url
      t.integer :complexity
      t.string :duration
      t.references :pack
      t.timestamps
    end
  end
end
