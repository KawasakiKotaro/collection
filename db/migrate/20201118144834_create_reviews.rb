class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :image
      t.text :text
      t.string :title
      t.integer :rate
      t.timestamps
    end
  end
end
