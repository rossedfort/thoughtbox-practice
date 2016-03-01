class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :url
      t.string :title
      t.integer :read, default: 0

      t.timestamps null: false
    end
  end
end
