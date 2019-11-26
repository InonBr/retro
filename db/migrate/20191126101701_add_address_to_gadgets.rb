class AddAddressToGadgets < ActiveRecord::Migration[5.2]
  def change
    add_column :gadgets, :address, :string
  end
end
