class CreateTypeHeres < ActiveRecord::Migration
  def change
    create_table :type_heres do |t|
      t.text :title
      t.text :words

      t.timestamps null: false
    end
  end
end
