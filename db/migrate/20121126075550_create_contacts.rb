class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.text :address
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
