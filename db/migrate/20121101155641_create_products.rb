class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :category_id
      t.string  :product_spec
      t.date    :apple_care_expired_at
      t.boolean  :has_invoice, :default => false
      t.text    :accessories
      t.string  :description
      t.string  :extenal_link
      t.string  :contact_type
      t.string  :trade_area
      t.string  :trade_type
      t.string  :trade_price
      t.text    :extra_note
      t.integer :user_id
      t.timestamps
    end
  end
end
