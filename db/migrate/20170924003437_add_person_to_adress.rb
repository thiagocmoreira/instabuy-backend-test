class AddPersonToAdress < ActiveRecord::Migration[5.1]
  def change
    add_reference :adresses, :person, foreign_key: true
  end
end
