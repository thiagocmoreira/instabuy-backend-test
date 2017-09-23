class CreateAdresses < ActiveRecord::Migration[5.1]
  def change
    create_table :adresses do |t|
      t.string :zipcode
      t.string :state
      t.string :city
      t.string :street
      t.integer :number

      t.timestamps
    end
  end
end
