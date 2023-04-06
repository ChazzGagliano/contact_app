class AddCoordinatesToContacts < ActiveRecord::Migration[7.0]
  def change
    add_column :contacts, :latitude, :integer
    add_column :contacts, :longitude, :integer
  end
end
