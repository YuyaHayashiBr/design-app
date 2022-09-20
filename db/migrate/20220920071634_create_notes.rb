class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string     :name, null: false
      t.string     :brewery
      t.integer    :srm
      t.integer    :ibu
      t.integer    :abv
      t.integer    :looks_clear_id
      t.integer    :looks_color_id
      t.integer    :looks_foam_id
      t.integer    :aroma_malt_id
      t.integer    :aroma_hop_id
      t.integer    :aroma_ester_id
      t.integer    :aroma_fruit_id
      t.integer    :aroma_other_id
      t.integer    :flavor_body_id
      t.integer    :flavor_carbonation_id
      t.integer    :flavor_malt_id
      t.integer    :flavor_hop_id
      t.integer    :flavor_other_id
      t.text       :memo
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
