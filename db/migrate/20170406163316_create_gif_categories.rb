class CreateGifCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :gif_categories do |t|
      t.references :gif
      t.references :category
    end
  end
end
