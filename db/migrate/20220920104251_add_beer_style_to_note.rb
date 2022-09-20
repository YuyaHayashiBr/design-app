class AddBeerStyleToNote < ActiveRecord::Migration[6.0]
  def change
    add_column :notes, :beer_style, :string
  end
end
