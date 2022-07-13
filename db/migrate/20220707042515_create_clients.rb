class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :email
      t.string :phoneNumber
      t.text :biography
      t.integer :status
      t.integer : rang

      t.timestamps
    end
  end
end
