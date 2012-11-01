class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :category_id
      t.string  :product_spec
      t.date    :apple_care_expired_at
      t.boolen  :has_invoice, :default => false
      t.text    :accessories
      t.string  :description
      t.string  :extenal_link
      t.string  :contact_type
      t.string  :trad_area
      t.string  :trade_type
      t.string  :trad_price
      t.text    :extra_note
      t.timestamps
    end
  end
end
