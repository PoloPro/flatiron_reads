class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.integer :author_id
      t.string :image_url
      t.string :title
      t.text :synopsis

      t.timestamps null: false
    end
  end
end
