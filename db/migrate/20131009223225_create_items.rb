class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.text :text
      t.integer :income
      t.string :str_1
      t.string :str_2
      t.string :str_3
      t.string :str_4
      t.string :str_5
      t.string :str_6
      t.string :str_7
      t.string :str_8
      t.integer :int_1
      t.integer :int_2
      t.integer :int_3
      t.integer :int_4
      t.integer :int_5
      t.integer :int_6
      t.integer :int_7
      t.integer :int_8

      t.timestamps
    end
  end
end
