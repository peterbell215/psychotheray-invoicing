class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :name, null: false
      t.string :email
      t.string :address, array: true, null: false
      t.string :postcode, null: false

      t.timestamps
    end
  end
end
