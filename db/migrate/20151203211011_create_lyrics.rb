class CreateLyrics < ActiveRecord::Migration
  def change
    create_table :lyrics do |t|
      t.string :name
      t.text :content

      t.timestamps null: false
    end
  end
end
