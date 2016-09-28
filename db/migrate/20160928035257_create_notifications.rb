class CreateNotifications < ActiveRecord::Migration[5.0]
  def change
    create_table :notifications do |t|
      t.string :title
      t.string :message
      t.integer :sender_id
      t.integer :receiver_id
      t.string :sender_name
      t.string :receiver_name

      t.timestamps
    end
  end
end
