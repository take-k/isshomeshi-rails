class CreateCooks < ActiveRecord::Migration[5.0]
  def change
    create_table :cooks do |t|
      t.string :name
      t.integer :good
      t.string :image_url
      t.string :link_url
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
